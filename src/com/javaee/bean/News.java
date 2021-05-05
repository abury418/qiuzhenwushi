package com.javaee.bean;

public class News {

	private int NId;
	private String NTitle;
	private String NContent;
	private String NMContent;
	private String NAuthorName;
	private String NAuthorMail;
	private String NAuthorBrief;
	private String NAuthorImg;
	private String NImage;
	public int getNId() {
		return NId;
	}
	public void setNId(int nId) {
		NId = nId;
	}
	public String getNTitle() {
		return NTitle;
	}
	public void setNTitle(String nTitle) {
		NTitle = nTitle;
	}
	public String getNContent() {
		return NContent;
	}
	public void setNContent(String nContent) {
		NContent = nContent;
	}
	public String getNAuthorName() {
		return NAuthorName;
	}
	public void setNAuthorName(String nAuthorName) {
		NAuthorName = nAuthorName;
	}
	public String getNAuthorMail() {
		return NAuthorMail;
	}
	public void setNAuthorMail(String nAuthorMail) {
		NAuthorMail = nAuthorMail;
	}
	public String getNAuthorBrief() {
		return NAuthorBrief;
	}
	public void setNAuthorBrief(String nAuthorBrief) {
		NAuthorBrief = nAuthorBrief;
	}
	public String getNAuthorImg() {
		return NAuthorImg;
	}
	public void setNAuthorImg(String nAuthorImg) {
		NAuthorImg = nAuthorImg;
	}
	public String getNImage() {
		return NImage;
	}
	public void setNImage(String nImage) {
		NImage = nImage;
	}
	public String getNMContent() {
		return NMContent;
	}
	public void setNMContent(String nMContent) {
		NMContent = nMContent;
	}
	@Override
	public String toString() {
		return "News [NId=" + NId + ", NTitle=" + NTitle + ", NContent=" + NContent + ", NMContent=" + NMContent
				+ ", NAuthorName=" + NAuthorName + ", NAuthorMail=" + NAuthorMail + ", NAuthorBrief=" + NAuthorBrief
				+ ", NAuthorImg=" + NAuthorImg + ", NImage=" + NImage + "]";
	}
	
}
