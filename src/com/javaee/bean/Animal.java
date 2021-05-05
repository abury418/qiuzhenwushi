package com.javaee.bean;

public class Animal {

	private int ANId;
	private String ANName;
	private String ANSort;
	private String ANImg;
	private String ANBrief;
	private String ANState;
	private String ANFrom;
	public int getANId() {
		return ANId;
	}
	public void setANId(int aNId) {
		ANId = aNId;
	}
	public String getANName() {
		return ANName;
	}
	public void setANName(String aNName) {
		ANName = aNName;
	}
	public String getANImg() {
		return ANImg;
	}
	public void setANImg(String aNImg) {
		ANImg = aNImg;
	}
	public String getANBrief() {
		return ANBrief;
	}
	public void setANBrief(String aNBrief) {
		ANBrief = aNBrief;
	}
	public String getANSort() {
		return ANSort;
	}
	public void setANSort(String aNSort) {
		ANSort = aNSort;
	}
	public String getANState() {
		return ANState;
	}
	public void setANState(String aNState) {
		ANState = aNState;
	}
	public String getANFrom() {
		return ANFrom;
	}
	public void setANFrom(String aNFrom) {
		ANFrom = aNFrom;
	}
	@Override
	public String toString() {
		return "Animal [ANId=" + ANId + ", ANName=" + ANName + ", ANSort=" + ANSort + ", ANImg=" + ANImg + ", ANBrief="
				+ ANBrief + ", ANState=" + ANState + ", ANFrom=" + ANFrom + "]";
	}
	
}
