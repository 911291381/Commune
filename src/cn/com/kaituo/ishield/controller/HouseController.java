package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.House;
import cn.com.kaituo.ishield.model.HouseQuery;
import cn.com.kaituo.ishield.service.IHouseService;


@RestController
@RequestMapping("/house")
public class HouseController   extends CommonController<House, HouseQuery>{
	
	@Autowired
	private IHouseService houseService;

	@Override
	protected void assemble() {
		super.setService(houseService);
	}

}
