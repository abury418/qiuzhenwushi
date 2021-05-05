package com.javaee.bean;

/*
 * 用户实体类
 */
public class User {
	public int UserId;
	public String UserName;
	public String UserPassword;
	public String UserPhone;
	public String UserMail;
	public String UserImage;
	public String UserBrief;
	
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
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public String getUserMail() {
		return UserMail;
	}
	public void setUserMail(String userMail) {
		UserMail = userMail;
	}
	public String getUserImage() {
		return UserImage;
	}
	public void setUserImage(String userImage) {
		UserImage = userImage;
	}
	public String getUserPhone() {
		return UserPhone;
	}
	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}
	public String getUserBrief() {
		return UserBrief;
	}
	public void setUserBrief(String userBrief) {
		UserBrief = userBrief;
	}
	@Override
	public String toString() {
		return "User [UserId=" + UserId + ", UserName=" + UserName + ", UserPassword=" + UserPassword + ", UserPhone="
				+ UserPhone + ", UserMail=" + UserMail + ", UserImage=" + UserImage + ", UserBrief=" + UserBrief + "]";
	}
	
}
