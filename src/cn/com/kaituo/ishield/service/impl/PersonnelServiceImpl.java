package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.PersonnelMapper;
import cn.com.kaituo.ishield.model.Personnel;
import cn.com.kaituo.ishield.service.IPersonnelService;

@Service
public class PersonnelServiceImpl extends CommonService<Personnel> implements IPersonnelService {

	@Autowired
	private PersonnelMapper personnelMapper;

	@Override
	protected void assemble() {
		super.setMapper(personnelMapper);
	}

}
