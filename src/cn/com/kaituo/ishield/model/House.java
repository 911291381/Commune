package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.BaseModel;
/**
 * 房屋实体
 * @author kingstar
 *
 */
public class House extends BaseModel<String> {

	
	private static final long serialVersionUID = 1L;
	private String SFZ;
	private String USAGE;
	private String ROOMCODE;

	private String NAME;
	private String XB;
	private String DHHM;

	private String HKSX;
	private String LD;
	private String CS;
	private String HS;

	public String getSFZ() {
		return SFZ;
	}

	public void setSFZ(String sFZ) {
		SFZ = sFZ;
	}

	public String getUSAGE() {
		return USAGE;
	}

	public void setUSAGE(String uSAGE) {
		USAGE = uSAGE;
	}

	public String getROOMCODE() {
		return ROOMCODE;
	}

	public void setROOMCODE(String rOOMCODE) {
		ROOMCODE = rOOMCODE;
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

	public String getDHHM() {
		return DHHM;
	}

	public void setDHHM(String dHHM) {
		DHHM = dHHM;
	}

	public String getHKSX() {
		return HKSX;
	}

	public void setHKSX(String hKSX) {
		HKSX = hKSX;
	}

	public String getLD() {
		return LD;
	}

	public void setLD(String lD) {
		LD = lD;
	}

	public String getCS() {
		return CS;
	}

	public void setCS(String cS) {
		CS = cS;
	}

	public String getHS() {
		return HS;
	}

	public void setHS(String hS) {
		HS = hS;
	}

}
