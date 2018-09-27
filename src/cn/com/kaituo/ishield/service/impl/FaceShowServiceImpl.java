package cn.com.kaituo.ishield.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.kaituo.husky.core.service.CommonService;
import cn.com.kaituo.ishield.dao.FaceShowMapper;
import cn.com.kaituo.ishield.model.FaceShow;
import cn.com.kaituo.ishield.service.IFaceShowService;

@Service
public class FaceShowServiceImpl extends CommonService<FaceShow> implements IFaceShowService {

	@Autowired
	private FaceShowMapper faceShowMapper;

	@Override
	protected void assemble() {
		super.setMapper(faceShowMapper);
	}

}
