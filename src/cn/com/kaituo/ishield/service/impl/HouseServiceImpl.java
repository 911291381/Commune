package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.HouseMapper;
import cn.com.kaituo.ishield.model.House;
import cn.com.kaituo.ishield.service.IHouseService;

@Service
public class HouseServiceImpl extends CommonService<House> implements IHouseService {

	@Autowired
	private HouseMapper houseMapper;

	@Override
	protected void assemble() {
		super.setMapper(houseMapper);
	}

}
