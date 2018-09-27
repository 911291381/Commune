package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.HotSpotShowMapper;
import cn.com.kaituo.ishield.model.HotSpotShow;
import cn.com.kaituo.ishield.service.IHotSpotShowService;

@Service
public class HotSpotShowServiceImpl extends CommonService<HotSpotShow> implements IHotSpotShowService {

	@Autowired
	private HotSpotShowMapper hotSpotShowMapper;

	@Override
	protected void assemble() {
		super.setMapper(hotSpotShowMapper);
	}

}
