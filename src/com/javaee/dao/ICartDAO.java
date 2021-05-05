package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dish;
import com.javaee.bean.User;

public interface ICartDAO {
	int addCartItem(User user,Dish dish,int num);
	int findDish(Dish dish,User user);
	int updateCart(int userid,Dish dish,int num);
	int deleteCart(Dish dish,int userid);
	/*
	 * ��ѯ�û�
	 */
	//ArrayList findCartItems(String userid, String dishid);
	//ArrayList findAllCartItems(String userid);
	/*
	 * �����û�
	 */
	//int insertCartItem(CartItem item);
}
