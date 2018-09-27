package cn.com.kaituo.ishield.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.com.kaituo.husky.web.CommonController;
import cn.com.kaituo.ishield.model.FaceShow;
import cn.com.kaituo.ishield.model.FaceShowQuery;
import cn.com.kaituo.ishield.service.IFaceShowService;

@RestController
@RequestMapping("/faceshow")
public class FaceShowController extends CommonController<FaceShow, FaceShowQuery> {

	@Autowired
	private IFaceShowService faceShowService;

	@Override
	protected void assemble() {
		super.setService(faceShowService);
	}

}
