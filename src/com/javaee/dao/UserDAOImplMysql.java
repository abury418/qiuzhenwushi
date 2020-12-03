package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.User;

public class UserDAOImplMysql extends BaseDAO implements IUserDAO {


	/*
	 * 修改用户账号信息(non-Javadoc)
	 * @see com.javaee.dao.IUserDAO#updateUser(com.javaee.bean.User)
	 */
	@Override
	public int updateUser(User user) {
		String sql = "update useraccount set UserPassword=? where UserName=?";
		Object[] params = {user.getUserPassword(),user.getUserName()};
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
	
	/*
	 * 插入用户（用户注册）
	 */
	@Override
	public int insertUser(User user) {
		String sql = "insert into useraccount(UserName,UserPassword,UserMail) values(?,?,?)";
		Object[] params= {user.getUserName(),user.getUserPassword(),user.getUserMail()};
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
	
	
	

}
