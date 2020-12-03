package com.javaee.bean;

/*
 * 用户实体类
 */
public class User {
	public int UserId;
	public String UserName;
	public String UserPassword;
	public String UserMail;
	
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
	
	
	@Override
	public String toString() {
		return "useraccount [UserId=" + UserId + ", UserName=" + UserName + ", UserPassword=" + UserPassword + ", UserMail="
				+ UserMail + "]";
	}
	
	
}
