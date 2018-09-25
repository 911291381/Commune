package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.Building;
import cn.com.kaituo.ishield.model.BuildingQuery;
import cn.com.kaituo.ishield.service.IBuildingService;

@RestController
@RequestMapping("/building")
public class BuildingController extends CommonController<Building, BuildingQuery> {

	@Autowired
	private IBuildingService buildingService;

	@Override
	protected void assemble() {
		super.setService(buildingService);
	}

}
