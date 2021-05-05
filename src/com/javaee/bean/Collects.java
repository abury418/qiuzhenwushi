package com.javaee.bean;

public class Collects {
	private int COID;
	private int UserId;
	private int SId;
	private String SName;
	private String SImage;
	private String SLei;
	private int AId;
	private String ATitle;
	private String AImage;
	private String AKeyWord;
	private String COMark;
	private String COTime;
	private int COFileId;
	private int CommentSize;
	
	public int getCOID() {
		return COID;
	}
	public void setCOID(int cOID) {
		COID = cOID;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
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
	public String getCOMark() {
		return COMark;
	}
	public void setCOMark(String cOMark) {
		COMark = cOMark;
	}
	public String getCOTime() {
		return COTime;
	}
	public void setCOTime(String cOTime) {
		COTime = cOTime;
	}
	public int getCOFileId() {
		return COFileId;
	}
	public void setCOFile(int cOFileId) {
		COFileId = cOFileId;
	}
	public String getSName() {
		return SName;
	}
	public void setSName(String sName) {
		SName = sName;
	}
	public String getSImage() {
		return SImage;
	}
	public void setSImage(String sImage) {
		SImage = sImage;
	}
	public String getSLei() {
		return SLei;
	}
	public void setSLei(String sLei) {
		SLei = sLei;
	}
	public String getATitle() {
		return ATitle;
	}
	public void setATitle(String aTitle) {
		ATitle = aTitle;
	}
	public String getAImage() {
		return AImage;
	}
	public void setAImage(String aImage) {
		AImage = aImage;
	}
	public String getAKeyWord() {
		return AKeyWord;
	}
	public void setAKeyWord(String aKeyWord) {
		AKeyWord = aKeyWord;
	}
	public void setCOFileId(int cOFileId) {
		COFileId = cOFileId;
	}
	
	public int getCommentSize() {
		return CommentSize;
	}
	public void setCommentSize(int commentSize) {
		CommentSize = commentSize;
	}
	@Override
	public String toString() {
		return "Collects [COID=" + COID + ", UserId=" + UserId + ", SId=" + SId + ", SName=" + SName + ", SImage="
				+ SImage + ", SLei=" + SLei + ", AId=" + AId + ", ATitle=" + ATitle + ", AImage=" + AImage
				+ ", AKeyWord=" + AKeyWord + ", COMark=" + COMark + ", COTime=" + COTime + ", COFileId=" + COFileId
				+ ", CommentSize=" + CommentSize + "]";
	}
	
	
}
