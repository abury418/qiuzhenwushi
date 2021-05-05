package com.javaee.bean;

public class AdminUser {

	private int AdmId;
	public String AdmPassword;
	private String AdmName;
	private String AdmMail;
	private String AdmPhone;
	public int getAdmId() {
		return AdmId;
	}
	public void setAdmId(int admId) {
		AdmId = admId;
	}
	public String getAdmPassword() {
		return AdmPassword;
	}
	public void setAdmPassword(String admPassword) {
		AdmPassword = admPassword;
	}
	public String getAdmName() {
		return AdmName;
	}
	public void setAdmName(String admName) {
		AdmName = admName;
	}
	public String getAdmMail() {
		return AdmMail;
	}
	public void setAdmMail(String admMail) {
		AdmMail = admMail;
	}
	
	public String getAdmPhone() {
		return AdmPhone;
	}
	public void setAdmPhone(String admPhone) {
		AdmPhone = admPhone;
	}
	@Override
	public String toString() {
		return "AdminUser [AdmId=" + AdmId + ", AdmPassword=" + AdmPassword + ", AdmName=" + AdmName + ", AdmMail="
				+ AdmMail + ", AdmPhone=" + AdmPhone + "]";
	}
	
}
