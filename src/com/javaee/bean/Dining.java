package com.javaee.bean;

public class Dining {
	
	private String DiningId;
	private String DiningName;
	private String DiningPic;
	private String DiningPhone;
	private String DiningAddress;
	private int DiningClick;
	private float DistributeMoney;
	
	public String getDiningId() {
		return DiningId;
	}
	public void setDiningId(String diningId) {
		DiningId = diningId;
	}
	public String getDiningName() {
		return DiningName;
	}
	public void setDiningName(String diningName) {
		DiningName = diningName;
	}
	public String getDiningPic() {
		return DiningPic;
	}
	public void setDiningPic(String diningPic) {
		DiningPic = diningPic;
	}
	public String getDiningPhone() {
		return DiningPhone;
	}
	public void setDiningPhone(String diningPhone) {
		DiningPhone = diningPhone;
	}
	public String getDiningAddress() {
		return DiningAddress;
	}
	public void setDiningAddress(String diningAddress) {
		DiningAddress = diningAddress;
	}
	public int getDiningClick() {
		return DiningClick;
	}
	public void setDiningClick(int diningClick) {
		DiningClick = diningClick;
	}
	public float getDistributeMoney() {
		return DistributeMoney;
	}
	public void setDistributeMoney(float distributeMoney) {
		DistributeMoney = distributeMoney;
	}
	
	@Override
	public String toString() {
		return "Dining [DiningId=" + DiningId + ", DiningName=" + DiningName + ", DiningPic=" + DiningPic
				+ ", DiningPhone=" + DiningPhone + ", DiningAddress=" + DiningAddress + ", DiningClick=" + DiningClick
				+ ", DistributeMoney=" + DistributeMoney + "]";
	}

	
}
