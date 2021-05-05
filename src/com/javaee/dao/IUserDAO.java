package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;

public interface IUserDAO {
	/*
	 * �����û���Ϣ
	 */
	int updateUser(User user);
	int updateUserPwd(User user);
	/*
	 * ��ѯ�û�
	 */
	ArrayList findUsers(String username, String password);
	ArrayList findUsers(int userid);
	/*
	 * �����û�
	 */
	int insertUser(User user);
	int insertUserInfo(UserInfo userinfo);

	public ArrayList<User> findUsersBy(String sql, Object[] params);

	User makeUser(String username,String pwd);
	ArrayList findUserByMail(String usermail);
	/*
	 * �����û���Ϣ
	 */
	int updateUserInfo(UserInfo userinfo);
	
	/*
	 * ɾ���û���Ϣ
	 */
	int deleteUserInfo(UserInfo userinfo);
	
	ArrayList findAdminUsers(int adminid, String admpassword);
	public ArrayList<AdminUser> findAdminUserInfosBy(String sql, Object[] params);
	int updateAdmin(AdminUser adminuser);
	int updateAdminPass(AdminUser adminuser);

	public int getTotalUserRecords();
	
	/*
	 * �¼�
	 */
	ArrayList findUserInfos(String username);

	int deleteUser(User user);

}
