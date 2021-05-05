package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;

public class UserDAOImplMysql extends BaseDAO implements IUserDAO {


	/*
	 * 修改用户账号信息(non-Javadoc)
	 * @see com.javaee.dao.IUserDAO#updateUser(com.javaee.bean.User)
	 */
	@Override
	public int updateUser(User user) {
		String sql = "update useraccount set UserName=?,UserPhone=?,UserMail=? where UserId=?";
		Object[] params = {user.getUserName(),user.getUserPhone(),user.getUserMail(),user.getUserId()};
		return this.modifyObj(sql, params);
	}

	/*
	 * 查询用户账号(non-Javadoc)
	 * @see com.javaee.dao.IUserDAO#findUsers(java.lang.String, java.lang.String)
	 */
	@Override
	public ArrayList findUsers(String username, String password) {
		String sql = "select * from useraccount where UserName=? and UserPassword=?";
		Object[] params = {username,password};
		return this.findObjs(sql, params, User.class);
	}
	@Override
	public ArrayList findUsers(int userid) {
		String sql = "select * from useraccount where UserId=?";
		Object[] params = {userid};
		return this.findObjs(sql, params, User.class);
	}
	@Override
	public User makeUser(String username, String password) {
		String sql = "select * from useraccount where UserName=? and UserPassword=?";
		Object[] params = {username,password};
		return (User)this.findObjs(sql, params, User.class).get(0);
	}
	/*
	 * 插入用户信息
	 * @see com.javaee.dao.IUserDAO#insertUserInfo(com.javaee.bean.UserInfo)
	 */
	@Override
	public int insertUserInfo(UserInfo userinfo) {
		String sql = "insert into userinfo(UserName,UserPhone,UserMail,UserIdCard,UserAddress) values(?,?,?,?,?)";
		Object[] params= {userinfo.getUserName(),userinfo.getUserPhone(),userinfo.getUserMail(),userinfo.getUserIdCard(),userinfo.getUserAddress()};
		return this.modifyObj(sql, params);
	}

	
	/*
	 * 插入用户（用户注册）
	 */
	@Override
	public int insertUser(User user) {
		String sql = "insert into useraccount(UserName,UserPhone,UserPassword,UserMail) values(?,?,?,?)";
		Object[] params= {user.getUserName(),user.getUserPhone(),user.getUserPassword(),user.getUserMail()};
		return this.modifyObj(sql, params);
	}

	/*
	 * 判断注册时输入的邮箱是否已被注册过
	 * @see com.javaee.dao.IUserDAO#findUserByMail(java.lang.String)
	 */
	@Override
	public ArrayList findUserByMail(String usermail) {
		String sql = "select * from useraccount where UserMail=?";
		Object[] params = {usermail};
		return this.findObjs(sql, params, User.class);
	}
	
	/*
	 * 查询用户信息
	 * @see com.javaee.dao.IUserDAO#findUserInfosBy(java.lang.String, java.lang.Object[])
	 */
	@Override
	public ArrayList<User> findUsersBy(String sql, Object[] params) {
		return this.findObjs(sql, params, User.class);
	}
	/*
	 * 更新用户信息
	 * @see com.javaee.dao.IUserDAO#updateUserInfo(com.javaee.bean.UserInfo)
	 */
	@Override
	public int updateUserInfo(UserInfo userinfo) {
		String sql = "update userinfo set UserName=?,UserPhone=?,UserMail=?,UserAddress=? where UserId=?";
		Object[] params = {userinfo.getUserName(),userinfo.getUserPhone(),userinfo.getUserMail(),userinfo.getUserAddress(),userinfo.getUserId()};
		return this.modifyObj(sql, params);
	}

	/*
	 * 删除用户信息
	 * @see com.javaee.dao.IUserDAO#deleteUserInfo(com.javaee.bean.UserInfo)
	 */
	@Override
	public int deleteUserInfo(UserInfo userinfo) {
		String sql="delete from userinfo where UserId=?";
		Object[] params= {userinfo.getUserId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public ArrayList findAdminUsers(int admid, String admpassword) {
		String sql = "select AdmName,AdmMail,AdmPhone from adminaccount where AdmId=? and AdmPassword=?";
		Object[] params = {admid,admpassword};
		return this.findObjs(sql, params, AdminUser.class);
	}

	@Override
	public ArrayList<AdminUser> findAdminUserInfosBy(String sql, Object[] params) {
		return this.findObjs(sql, params, AdminUser.class);
	}

	@Override
	public int updateAdmin(AdminUser adminuser) {
		String sql = "update adminaccount set AdmName=?,AdmPhone=?,AdmMail=? where AdmId=?";
		Object[] params = {adminuser.getAdmName(),adminuser.getAdmPhone(),adminuser.getAdmMail(),adminuser.getAdmId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int updateAdminPass(AdminUser adminuser) {
		String sql = "update adminaccount set AdmPassword=? where AdmId=?";
		Object[] params = {adminuser.getAdmPassword(),adminuser.getAdmId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int getTotalUserRecords() {
		String strsql="select count(*) from useraccount";
		return getTotalRecords(strsql);
	}

	@Override
	public ArrayList findUserInfos(String username) {
		String sql = "select UserId,UserName,UserPhone,UserMail,UserAddress from userinfo where UserName=?";
		Object[] params = {username};
		return this.findObjs(sql, params, UserInfo.class);
	}

	@Override
	public int updateUserPwd(User user) {
		String sql = "update useraccount set UserPassword=? where UserId=?";
		Object[] params = {user.getUserPassword(),user.getUserId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int deleteUser(User user) {
		String sql="delete from useraccount where UserId=?";
		Object[] params= {user.getUserId()};
		return this.modifyObj(sql, params);
	}


}
