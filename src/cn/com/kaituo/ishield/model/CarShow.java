package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;

/**
 * 抓拍车辆展示
 * 
 * @author kingstar
 *
 */
public class CarShow extends BaseModel<String> {

	private static final long serialVersionUID = 1L;

	private String DEVICENAME;
	private String CARNUM;
	private String LCAPTURETIME;
	private String PICCONTEXT;

	public String getDEVICENAME() {
		return DEVICENAME;
	}

	public void setDEVICENAME(String dEVICENAME) {
		DEVICENAME = dEVICENAME;
	}

	public String getCARNUM() {
		return CARNUM;
	}

	public void setCARNUM(String cARNUM) {
		CARNUM = cARNUM;
	}

	public String getLCAPTURETIME() {
		return LCAPTURETIME;
	}

	public void setLCAPTURETIME(String lCAPTURETIME) {
		LCAPTURETIME = lCAPTURETIME;
	}

	public String getPICCONTEXT() {
		return PICCONTEXT;
	}

	public void setPICCONTEXT(String pICCONTEXT) {
		PICCONTEXT = pICCONTEXT;
	}

}
