package com.javaee.bean;

public class Dinosaur {

	private int DIId;
	private String DIName;
	private String DIImg;
	private String DISort;
	private String DILei;
	private String DIAge;
	private String DIEat;
	private String DIBrief;
	public int getDIId() {
		return DIId;
	}
	public void setDIId(int dIId) {
		DIId = dIId;
	}
	public String getDIName() {
		return DIName;
	}
	public void setDIName(String dIName) {
		DIName = dIName;
	}
	public String getDIImg() {
		return DIImg;
	}
	public void setDIImg(String dIImg) {
		DIImg = dIImg;
	}
	public String getDISort() {
		return DISort;
	}
	public void setDISort(String dISort) {
		DISort = dISort;
	}
	public String getDILei() {
		return DILei;
	}
	public void setDILei(String dILei) {
		DILei = dILei;
	}
	public String getDIAge() {
		return DIAge;
	}
	public void setDIAge(String dIAge) {
		DIAge = dIAge;
	}
	public String getDIEat() {
		return DIEat;
	}
	public void setDIEat(String dIEat) {
		DIEat = dIEat;
	}
	public String getDIBrief() {
		return DIBrief;
	}
	public void setDIBrief(String dIBrief) {
		DIBrief = dIBrief;
	}
	@Override
	public String toString() {
		return "Dinosaur [DIId=" + DIId + ", DIName=" + DIName + ", DIImg=" + DIImg + ", DISort=" + DISort + ", DILei="
				+ DILei + ", DIAge=" + DIAge + ", DIEat=" + DIEat + ", DIBrief=" + DIBrief + "]";
	}
	
}
