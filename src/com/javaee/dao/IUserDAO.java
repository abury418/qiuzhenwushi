package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;

public interface IUserDAO {
	/*
	 * 更新用户信息
	 */
	int updateUser(User user);
	int updateUserPwd(User user);
	/*
	 * 查询用户
	 */
	ArrayList findUsers(String username, String password);
	ArrayList findUsers(int userid);
	/*
	 * 插入用户
	 */
	int insertUser(User user);
	int insertUserInfo(UserInfo userinfo);

	public ArrayList<User> findUsersBy(String sql, Object[] params);

	User makeUser(String username,String pwd);
	ArrayList findUserByMail(String usermail);
	/*
	 * 更新用户信息
	 */
	int updateUserInfo(UserInfo userinfo);
	
	/*
	 * 删除用户信息
	 */
	int deleteUserInfo(UserInfo userinfo);
	
	ArrayList findAdminUsers(int adminid, String admpassword);
	public ArrayList<AdminUser> findAdminUserInfosBy(String sql, Object[] params);
	int updateAdmin(AdminUser adminuser);
	int updateAdminPass(AdminUser adminuser);

	public int getTotalUserRecords();
	
	/*
	 * 新加
	 */
	ArrayList findUserInfos(String username);

	int deleteUser(User user);

}
