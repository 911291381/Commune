package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.Building;
import cn.com.kaituo.ishield.model.BuildingQuery;
import cn.com.kaituo.ishield.model.CarShow;
import cn.com.kaituo.ishield.model.CarShowQuery;
import cn.com.kaituo.ishield.service.IBuildingService;
import cn.com.kaituo.ishield.service.ICarShowService;

@RestController
@RequestMapping("/carshow")
public class CarShowController extends CommonController<CarShow, CarShowQuery> {

	@Autowired
	private ICarShowService carShowService;

	@Override
	protected void assemble() {
		super.setService(carShowService);
	}
}
