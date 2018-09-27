package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;
/**
 * 人脸抓拍查询
 * @author kingstar
 *
 */
public class FaceShow  extends BaseModel<String>{

	
	private static final long serialVersionUID = 1L;

	private String XM;
	private String XB;
	private String SFZH;
	private String PICCONTEXT;

	public String getXM() {
		return XM;
	}

	public void setXM(String xM) {
		XM = xM;
	}

	public String getXB() {
		return XB;
	}

	public void setXB(String xB) {
		XB = xB;
	}

	public String getSFZH() {
		return SFZH;
	}

	public void setSFZH(String sFZH) {
		SFZH = sFZH;
	}

	public String getPICCONTEXT() {
		return PICCONTEXT;
	}

	public void setPICCONTEXT(String pICCONTEXT) {
		PICCONTEXT = pICCONTEXT;
	}


}
