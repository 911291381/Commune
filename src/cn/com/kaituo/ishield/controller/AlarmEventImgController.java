package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.AlarmEventImg;
import cn.com.kaituo.ishield.model.AlarmEventImgQuery;
import cn.com.kaituo.ishield.service.IAlarmEventImgService;
@RestController
@RequestMapping("/alarmeventimg")
public class AlarmEventImgController extends CommonController<AlarmEventImg,AlarmEventImgQuery> {
	   @Autowired
	    private IAlarmEventImgService alarmEventImgService;

	    @Override
	    protected void assemble() {
	        super.setService(alarmEventImgService);
	    }
}
