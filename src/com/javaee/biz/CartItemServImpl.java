package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dish;
import com.javaee.bean.User;
import com.javaee.dao.ICartItemDAO;
import com.javaee.dao.IUserDAO;
import com.javaee.util.DAOFactory;
public class CartItemServImpl implements ICartItemServ {
	@Override
	public boolean validateCartItem(CartItem item) {
		ICartItemDAO itemdao = (ICartItemDAO) DAOFactory.newInstance("ICartItemDAO");
		if(itemdao.findCartItems(Integer.toString(item.getUserId()), Integer.toString(item.getDishId())).size()>0) {
			return true;
		}
		return false;
	}
	public ArrayList findAllCartItem(int userid) {
		ArrayList arr=new ArrayList();
		ICartItemDAO itemdao = (ICartItemDAO) DAOFactory.newInstance("ICartItemDAO");
		arr=itemdao.findAllCartItems(userid);
		
		return arr;
	}
	public CartItem FindDish(int userid,int dishid) {
		CartItem item;
		ICartItemDAO itemdao = (ICartItemDAO) DAOFactory.newInstance("ICartItemDAO");
		item=(CartItem)itemdao.findCartItems(Integer.toString(userid), Integer.toString(dishid)).get(0);
		return item;
	}
}
