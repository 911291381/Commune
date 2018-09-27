package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.EventShow;
import cn.com.kaituo.ishield.model.EventShowQuery;
import cn.com.kaituo.ishield.service.IEventShowService;

@RestController
@RequestMapping("/eventshow")
public class EventShowController extends CommonController<EventShow, EventShowQuery> {

	@Autowired
	private IEventShowService eventShowService;

	@Override
	protected void assemble() {
		super.setService(eventShowService);
	}

}
