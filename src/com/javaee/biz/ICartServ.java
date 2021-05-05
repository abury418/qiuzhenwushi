package com.javaee.biz;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dish;
import com.javaee.bean.User;

public interface ICartServ {

	//购物车内菜品数加一
	int addDish(User user,Dish dish,int num);
	int deleteDish(Dish dish,int userid);
	int updateDish(int userid,Dish dish,int num);
	CartItem FindDish(int userid,int Dishid);
}
