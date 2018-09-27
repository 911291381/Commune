package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.BuildingMapper;
import cn.com.kaituo.ishield.dao.CarShowMapper;
import cn.com.kaituo.ishield.model.Building;
import cn.com.kaituo.ishield.model.CarShow;
import cn.com.kaituo.ishield.service.IBuildingService;
import cn.com.kaituo.ishield.service.ICarShowService;

@Service
public class CarShowServiceImpl extends CommonService<CarShow> implements ICarShowService {

	@Autowired
	private CarShowMapper carShowMapper;

	@Override
	protected void assemble() {
		super.setMapper(carShowMapper);
	}

}
