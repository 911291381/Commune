package cn.com.kaituo.ishield.model;

import cn.com.kaituo.husky.core.model.PageQuery;

public class BuildingQuery extends PageQuery {

	private String LZ;
	private String HS;
	private String CS;

	public String getLZ() {
		return LZ;
	}

	public void setLZ(String lZ) {
		LZ = lZ;
	}

	public String getHS() {
		return HS;
	}

	public void setHS(String hS) {
		HS = hS;
	}

	public String getCS() {
		return CS;
	}

	public void setCS(String cS) {
		CS = cS;
	}

}
