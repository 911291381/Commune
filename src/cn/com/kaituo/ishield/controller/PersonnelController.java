package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.Personnel;
import cn.com.kaituo.ishield.model.PersonnelQuery;
import cn.com.kaituo.ishield.service.IPersonnelService;

@RestController
@RequestMapping("/personnel")
public class PersonnelController extends CommonController<Personnel, PersonnelQuery> {

	@Autowired
	private IPersonnelService personnelService;

	@Override
	protected void assemble() {
		super.setService(personnelService);
	}

}
