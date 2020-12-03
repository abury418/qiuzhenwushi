package com.javaee.biz;

import com.javaee.bean.User;

public interface IUserServ {
	
	/*
	 * 判断登录时输入的用户是否存在
	 */
	boolean validateUser(User user);
	
	/*
	 * 判断注册时用户输入的邮箱是否已经被注册过
	 */
	User validateMail(User user);
}
