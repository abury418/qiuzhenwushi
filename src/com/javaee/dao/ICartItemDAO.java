package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.CartItem;

public interface ICartItemDAO {
	/*
	 * 更新菜品信息
	 */
	int updateCartItem(CartItem item);
	/*
	 * 查询用户
	 */
	ArrayList findCartItems(String userid, String dishid);
	ArrayList findAllCartItems(int userid);
	/*
	 * 插入用户
	 */
	int insertCartItem(CartItem item);
	int deleteCartItem(String userid,String dishid);
	//ArrayList findUserByMail(String usermail);
}
