package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.User;

public interface IUserDAO {
	/*
	 * 更新用户信息
	 */
	int updateUser(User user);
	/*
	 * 查询用户
	 */
	ArrayList findUsers(String username, String password);
	/*
	 * 插入用户
	 */
	int insertUser(User user);
	
	ArrayList findUserByMail(String usermail);
}
