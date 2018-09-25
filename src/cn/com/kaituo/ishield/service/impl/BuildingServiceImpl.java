package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.BuildingMapper;
import cn.com.kaituo.ishield.model.Building;
import cn.com.kaituo.ishield.service.IBuildingService;

@Service
public class BuildingServiceImpl extends CommonService<Building> implements IBuildingService {

	@Autowired
	private BuildingMapper buildingMapper;

	@Override
	protected void assemble() {
		super.setMapper(buildingMapper);
	}

}
