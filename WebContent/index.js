$(function(){
    wstest();
});

function wstest(){
if('WebSocket' in window){
        websocket = new WebSocket("ws://" + window.location.host + "/iShield/service/event");
    }else{
        alert('Not support websocket');
        return;
    }
    
    websocket.onerror = function(){
        console.log("error");
    };
     
    websocket.onopen = function(event){
        console.log('连接成功');
    }

    websocket.onmessage = function(event){
        var events = $.parseJSON(event.data);
        $(events).each(function(idx,item){
            console.log(item.eventType + ':' + item.eventDate);
        });
    }
     
    websocket.onclose = function(){
        console.log("close");
    }
     
    window.onbeforeunload = function(){
        websocket.close();
    }
}