package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.PageQuery;

public class FaceShowQuery extends PageQuery {

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
