package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;

/**
 * 人员实体
 * 
 * @author kingstar
 *
 */
public class Personnel extends BaseModel<String> {

	private static final long serialVersionUID = 1L;

	private String SFZ;
	private String NAME;
	private String XB;
	private String MZ;
	private String WHCD;

	public String getSFZ() {
		return SFZ;
	}

	public void setSFZ(String sFZ) {
		SFZ = sFZ;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getXB() {
		return XB;
	}

	public void setXB(String xB) {
		XB = xB;
	}

	public String getMZ() {
		return MZ;
	}

	public void setMZ(String mZ) {
		MZ = mZ;
	}

	public String getWHCD() {
		return WHCD;
	}

	public void setWHCD(String wHCD) {
		WHCD = wHCD;
	}

}
