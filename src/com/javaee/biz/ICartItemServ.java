package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.User;

public interface ICartItemServ {
	/*
	 * ��֤�Ƿ���ͬ�û��������ͬ��Ʒ
	 */
	boolean validateCartItem(CartItem item);
	ArrayList findAllCartItem(int userid);


}
