package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.User;

public interface ICartItemServ {
	/*
	 * 验证是否相同用户添加了相同菜品
	 */
	boolean validateCartItem(CartItem item);
	ArrayList findAllCartItem(int userid);


}
