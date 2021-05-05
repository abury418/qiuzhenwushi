package com.javaee.bean;

public class Article {

	private int AId;
	private String ATitle;
	private String AContent;
	private String AMContent;
	private String AAuthorName;
	private String AAuthorMail;
	private String AAuthorBrief;
	private String AAuthorImg;
	private String AKeyWord;
	private String AImage;
	public int getAId() {
		return AId;
	}
	public void setAId(int aId) {
		AId = aId;
	}
	public String getATitle() {
		return ATitle;
	}
	public void setATitle(String aTitle) {
		ATitle = aTitle;
	}
	public String getAContent() {
		return AContent;
	}
	public void setAContent(String aContent) {
		AContent = aContent;
	}
	public String getAAuthorName() {
		return AAuthorName;
	}
	public void setAAuthorName(String aAuthorName) {
		AAuthorName = aAuthorName;
	}
	public String getAAuthorMail() {
		return AAuthorMail;
	}
	public void setAAuthorMail(String aAuthorMail) {
		AAuthorMail = aAuthorMail;
	}
	public String getAAuthorBrief() {
		return AAuthorBrief;
	}
	public void setAAuthorBrief(String aAuthorBrief) {
		AAuthorBrief = aAuthorBrief;
	}
	public String getAAuthorImg() {
		return AAuthorImg;
	}
	public void setAAuthorImg(String aAuthorImg) {
		AAuthorImg = aAuthorImg;
	}
	public String getAKeyWord() {
		return AKeyWord;
	}
	public void setAKeyWord(String aKeyWord) {
		AKeyWord = aKeyWord;
	}
	public String getAImage() {
		return AImage;
	}
	public void setAImage(String aImage) {
		AImage = aImage;
	}
	public String getAMContent() {
		return AMContent;
	}
	public void setAMContent(String aMContent) {
		AMContent = aMContent;
	}
	@Override
	public String toString() {
		return "Article [AId=" + AId + ", ATitle=" + ATitle + ", AContent=" + AContent + ", AMContent=" + AMContent
				+ ", AAuthorName=" + AAuthorName + ", AAuthorMail=" + AAuthorMail + ", AAuthorBrief=" + AAuthorBrief
				+ ", AAuthorImg=" + AAuthorImg + ", AKeyWord=" + AKeyWord + ", AImage=" + AImage + "]";
	}
	
	
}
