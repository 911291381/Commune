package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.AlarmEventImgMapper;
import cn.com.kaituo.ishield.model.AlarmEventImg;
import cn.com.kaituo.ishield.service.IAlarmEventImgService;

@Service
public class AlarmEventImgServiceImpl extends CommonService<AlarmEventImg> implements IAlarmEventImgService {
	
	@Autowired
    private AlarmEventImgMapper alarmEventImgMapper;

    @Override
    protected void assemble() {
        super.setMapper(alarmEventImgMapper);
}

}
