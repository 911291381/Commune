package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;

/**
 * wifi探针实体
 * 
 * @author kingstar
 *
 */
public class HotSpotShow extends BaseModel<String> {

	private static final long serialVersionUID = 1L;

	private String HOTSPOTMAC;
	private String HOTSPOTSSID;
	private String ACQUISITIONTIME;

	private String FIELDSTRENGTH;
	private String PLACECODE;
	private String EQUIPMENTCODE;

	public String getHOTSPOTMAC() {
		return HOTSPOTMAC;
	}

	public void setHOTSPOTMAC(String hOTSPOTMAC) {
		HOTSPOTMAC = hOTSPOTMAC;
	}

	public String getHOTSPOTSSID() {
		return HOTSPOTSSID;
	}

	public void setHOTSPOTSSID(String hOTSPOTSSID) {
		HOTSPOTSSID = hOTSPOTSSID;
	}

	public String getACQUISITIONTIME() {
		return ACQUISITIONTIME;
	}

	public void setACQUISITIONTIME(String aCQUISITIONTIME) {
		ACQUISITIONTIME = aCQUISITIONTIME;
	}

	public String getFIELDSTRENGTH() {
		return FIELDSTRENGTH;
	}

	public void setFIELDSTRENGTH(String fIELDSTRENGTH) {
		FIELDSTRENGTH = fIELDSTRENGTH;
	}

	public String getPLACECODE() {
		return PLACECODE;
	}

	public void setPLACECODE(String pLACECODE) {
		PLACECODE = pLACECODE;
	}

	public String getEQUIPMENTCODE() {
		return EQUIPMENTCODE;
	}

	public void setEQUIPMENTCODE(String eQUIPMENTCODE) {
		EQUIPMENTCODE = eQUIPMENTCODE;
	}

}
