package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.User;

public interface IUserDAO {
	/*
	 * �����û���Ϣ
	 */
	int updateUser(User user);
	/*
	 * ��ѯ�û�
	 */
	ArrayList findUsers(String username, String password);
	/*
	 * �����û�
	 */
	int insertUser(User user);
	
	ArrayList findUserByMail(String usermail);
}
