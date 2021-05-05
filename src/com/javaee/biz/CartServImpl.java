package com.javaee.biz;

import java.time.LocalDate;
import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dish;
import com.javaee.bean.User;
import com.javaee.dao.ICartDAO;
import com.javaee.dao.IDiningDAO;
import com.javaee.util.DAOFactory;

public class CartServImpl {

	public int addDish(User user,Dish dish,int num) {
		ICartDAO cartdao = (ICartDAO) DAOFactory.newInstance("ICartDAO");
		return cartdao.addCartItem(user, dish, num);

	}
	public int deleteDish(Dish dish,int userid) {
		ICartDAO cartdao = (ICartDAO) DAOFactory.newInstance("ICartDAO");
		return cartdao.deleteCart(dish,userid);

	}
	public int updateDish(int userid,Dish dish,int num) {
		ICartDAO cartdao = (ICartDAO) DAOFactory.newInstance("ICartDAO");
		return cartdao.updateCart(userid, dish, num);

	}
}
