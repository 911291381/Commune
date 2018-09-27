package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.EventShowMapper;
import cn.com.kaituo.ishield.model.EventShow;
import cn.com.kaituo.ishield.service.IEventShowService;

@Service
public class EventShowServiceImpl extends CommonService<EventShow> implements IEventShowService {

	@Autowired
	private EventShowMapper eventShowMapper;

	@Override
	protected void assemble() {
		super.setMapper(eventShowMapper);
	}

}
