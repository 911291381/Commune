package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.HotSpotShow;
import cn.com.kaituo.ishield.model.HotSpotShowQuery;
import cn.com.kaituo.ishield.service.IHotSpotShowService;

@RestController
@RequestMapping("/hotspotshow")
public class HotSpotShowController extends CommonController<HotSpotShow, HotSpotShowQuery> {

	@Autowired
	private IHotSpotShowService hotSpotShowService;

	@Override
	protected void assemble() {
		super.setService(hotSpotShowService);
	}

}
