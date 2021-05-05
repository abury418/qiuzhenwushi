package com.javaee.bean;

public class Comment {

	private int CId;
	private int SId;
	private String SName;
	private int AId;
	private String ATitle;
	private int NId;
	private String NTitle;
	private int UserId;
	private String UserName;
	private String CTime;
	private String CContent;
	private String CImage;
	private int CLikeNum;
	public int getCId() {
		return CId;
	}
	public void setCId(int cId) {
		CId = cId;
	}
	public int getSId() {
		return SId;
	}
	public void setSId(int sId) {
		SId = sId;
	}
	public int getAId() {
		return AId;
	}
	public void setAId(int aId) {
		AId = aId;
	}
	public int getNId() {
		return NId;
	}
	public void setNId(int nId) {
		NId = nId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getCTime() {
		return CTime;
	}
	public void setCTime(String cTime) {
		CTime = cTime;
	}
	public String getCContent() {
		return CContent;
	}
	public void setCContent(String cContent) {
		CContent = cContent;
	}
	public String getCImage() {
		return CImage;
	}
	public void setCImage(String cImage) {
		CImage = cImage;
	}
	
	public String getSName() {
		return SName;
	}
	public void setSName(String sName) {
		SName = sName;
	}
	public String getATitle() {
		return ATitle;
	}
	public void setATitle(String aTitle) {
		ATitle = aTitle;
	}
	public String getNTitle() {
		return NTitle;
	}
	public void setNTitle(String nTitle) {
		NTitle = nTitle;
	}
	public int getCLikeNum() {
		return CLikeNum;
	}
	public void setCLikeNum(int cLikeNum) {
		CLikeNum = cLikeNum;
	}
	@Override
	public String toString() {
		return "Comment [CId=" + CId + ", SId=" + SId + ", SName=" + SName + ", AId=" + AId + ", ATitle=" + ATitle
				+ ", NId=" + NId + ", NTitle=" + NTitle + ", UserId=" + UserId + ", UserName=" + UserName + ", CTime="
				+ CTime + ", CContent=" + CContent + ", CImage=" + CImage + ", CLikeNum=" + CLikeNum + "]";
	}
}
