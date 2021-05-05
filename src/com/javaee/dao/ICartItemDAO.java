package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.CartItem;

public interface ICartItemDAO {
	/*
	 * ���²�Ʒ��Ϣ
	 */
	int updateCartItem(CartItem item);
	/*
	 * ��ѯ�û�
	 */
	ArrayList findCartItems(String userid, String dishid);
	ArrayList findAllCartItems(int userid);
	/*
	 * �����û�
	 */
	int insertCartItem(CartItem item);
	int deleteCartItem(String userid,String dishid);
	//ArrayList findUserByMail(String usermail);
}
