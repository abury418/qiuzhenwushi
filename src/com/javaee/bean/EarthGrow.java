package com.javaee.bean;

public class EarthGrow {

	private String ETitle;
	private String EImg;
	private String ETime;
	private String EBrief;
	public String getETitle() {
		return ETitle;
	}
	public void setETitle(String eTitle) {
		ETitle = eTitle;
	}
	public String getETime() {
		return ETime;
	}
	public void setETime(String eTime) {
		ETime = eTime;
	}
	public String getEBrief() {
		return EBrief;
	}
	public void setEBrief(String eBrief) {
		EBrief = eBrief;
	}
	public String getEImg() {
		return EImg;
	}
	public void setEImg(String eImg) {
		EImg = eImg;
	}
	@Override
	public String toString() {
		return "EarthGrow [ETitle=" + ETitle + ", EImg=" + EImg + ", ETime=" + ETime + ", EBrief=" + EBrief + "]";
	}
	
}
