
package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.User;

public class CartItemDAOImplMysql extends BaseDAO implements ICartItemDAO {

	/*
	 * 更新菜品信息
	 */
	@Override
	public int updateCartItem(CartItem item) {
		String sql = "update cart set DishName=? ,DishNum=?,SumPrice=? ,DishPic=?,DishDetails=?,OrderTime=? where UserId=? and DishId=? ";
		Object[] params = {item.getDishName(),item.getDishNum(),item.getSumPrice(),item.getDishPic(),item.getDishDetails(),item.getOrderTime()};
		return this.modifyObj(sql, params);
	}
	/*
	 * 查询用户
	 */
	@Override
	public ArrayList findCartItems(String userid, String dishid) {
		String sql = "select * from cart where UserId=? and DishId=?";
		Object[] params = {userid,dishid};
		return this.findObjs(sql, params, CartItem.class);
	}
	@Override
	public ArrayList findAllCartItems(int userid) {
		String sql = "select * from cart where UserId=?";
		Object[] params = {userid};
		return this.findObjs(sql, params, CartItem.class);
	}
	/*
	 * 插入用户
	 */
	@Override
	public int insertCartItem(CartItem item) {
		String sql = "insert into cart(UserId,DishId,DishName,DishNum,SumPrice,DishPic,DishDetails,OrderTime) values(?,?,?,?,?,?,?,?)";
		Object[] params= {item.getUserId(),item.getDishId(),item.getDishName(),item.getDishNum(),item.getSumPrice(),item.getDishPic(),item.getDishDetails(),item.getOrderTime()};
		return this.modifyObj(sql, params);
	}
	@Override
	public int deleteCartItem(String userid,String dishid) {
		String sql = "delete from cart where UserId=? and DishId=?";
		Object[] params= {userid,dishid};
		return this.modifyObj(sql, params);
	}
	/*
	 * 修改购物车内商品信息(non-Javadoc)
	 * @see com.javaee.dao.IUserDAO#updateUser(com.javaee.bean.User)
	 */
	/*@Override
	public int updateUser(User user) {
		String sql = "update useraccount set UserPassword=? where UserName=?";
		Object[] params = {user.getUserPassword(),user.getUserName()};
		return this.modifyObj(sql, params);
		
		
	}*/

	/*
	 * 查询用户账号(non-Javadoc)
	 * @see com.javaee.dao.IUserDAO#findUsers(java.lang.String, java.lang.String)
	 */
	/*@Override
	public ArrayList findUsers(String username, String password) {
		String sql = "select * from useraccount where UserName=? and UserPassword=?";
		Object[] params = {username,password};
		return this.findObjs(sql, params, User.class);
	}*/
	
	/*
	 * 插入用户（用户注册）
	 */
	/*@Override
	public int insertUser(User user) {
		String sql = "insert into useraccount(UserName,UserPassword,UserMail) values(?,?,?)";
		Object[] params= {user.getUserName(),user.getUserPassword(),user.getUserMail()};
		return this.modifyObj(sql, params);
	}*/

	/*
	 * 判断注册时输入的邮箱是否已被注册过
	 * @see com.javaee.dao.IUserDAO#findUserByMail(java.lang.String)
	 */
	/*@Override
	public ArrayList findUserByMail(String usermail) {
		String sql = "select * from useraccount where UserMail=?";
		Object[] params = {usermail};
		return this.findObjs(sql, params, User.class);
	}*/
	
	
	

}
