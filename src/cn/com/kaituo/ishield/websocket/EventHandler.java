package cn.com.kaituo.ishield.websocket;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedTransferQueue;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.alibaba.fastjson.JSON;

public class EventHandler extends TextWebSocketHandler {
    private static Logger         logger = LoggerFactory.getLogger(EventHandler.class);
    private Set<WebSocketSession> sessions;
    private BlockingQueue<String> queue  = new LinkedTransferQueue<>();
    private boolean               working;

    public void init() {
        sessions = Collections.synchronizedSet(new HashSet<>());
        working = true;
        new Thread(() -> {
            while (working) {
                String message = null;
                try {
                    message = queue.take();
                } catch (InterruptedException e) {
                    logger.error("提取消息异常", e);
                }

                if (message == null) {
                    logger.warn("提取到消息为null，请检查消息压入逻辑");
                    continue;
                }
                final TextMessage textMessage = new TextMessage(message);
                
                sessions.forEach(s -> {
                    if (s.isOpen()) {
                        try {
                            s.sendMessage(textMessage);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    } else {
                        sessions.remove(s);
                        logger.debug("发现Session失效，移出列表。Session={}", s);
                    }
                });
            }

            queue.clear();
        }, "WebSocketMessager").start();
    }

    public void destory() {
        working = false;
    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        logger.debug("连接建立,会话:{},远端地址:{}", session.getId(), session.getRemoteAddress());
        sessions.add(session);
        logger.debug("当前会话数:{}", sessions.size());
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        logger.debug("连接管理,会话:{},远端地址:{}", session.getId(), session.getRemoteAddress());
        sessions.remove(session);
        logger.debug("当前会话数:{}", sessions.size());
    }

    @Override
    public void handleTransportError(WebSocketSession session, Throwable e) throws Exception {
        logger.error("传输错误", e);
        logger.error("会话:{}即将销毁", session.getId());
    }

    public void broadcast(Object obj) {
        try {
            queue.put(JSON.toJSONString(obj));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
