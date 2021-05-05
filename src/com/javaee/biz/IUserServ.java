package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;

public interface IUserServ {
	
	/*
	 * 判断登录时输入的用户是否存在
	 */
	boolean validateUser(User user);
	
	/*
	 * 判断注册时用户输入的邮箱是否已经被注册过
	 */
	User validateMail(User user);
	User maketoUser(String username,String pwd);
	User maketoUser(int userid);
	/*
	 * 查找用户信息列表
	 */
	public ArrayList findUsersPageList(int pageNo, int pageSize);
	public int getTotalRecords();
	
	/*
	 * 更新、删除用户信息
	 */
	public void updateUserInfo(UserInfo userinfo);
	public void deleteUserInfo(UserInfo userinfo);
	public void insertUserInfo(UserInfo userinfo);
	public void insertUser(User user);//用于在管理员录入用户信息时将用户账号也录入，此时默认密码就是用户的用户名+邮箱地址
	
	boolean validateAdminUser(AdminUser adminuser);
	public AdminUser findAdminInfo(int admid);
	public void updateAdmin(AdminUser adminuser);
	public void updateAdminPass(AdminUser adminuser);

	/*
	 * 新加（个人空间管理）
	 */
	UserInfo maketoUserInfo(String username);
	public void updateUser(User user);
	public void updateUserPwd(User user);
	public void deleteUser(User user);

}
