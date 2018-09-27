package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;
/**
 * 时间查询实体
 * @author kingstar
 *
 */
public class EventShow extends BaseModel<String> {

	private static final long serialVersionUID = 1L;
	
	private String ALARMTYPE;
	private String EVENTTYPE;
	private String TIME;
	private String PICCONTEXT;

	public String getALARMTYPE() {
		return ALARMTYPE;
	}

	public void setALARMTYPE(String aLARMTYPE) {
		ALARMTYPE = aLARMTYPE;
	}

	public String getEVENTTYPE() {
		return EVENTTYPE;
	}

	public void setEVENTTYPE(String eVENTTYPE) {
		EVENTTYPE = eVENTTYPE;
	}

	public String getTIME() {
		return TIME;
	}

	public void setTIME(String tIME) {
		TIME = tIME;
	}

	public String getPICCONTEXT() {
		return PICCONTEXT;
	}

	public void setPICCONTEXT(String pICCONTEXT) {
		PICCONTEXT = pICCONTEXT;
	}

}
