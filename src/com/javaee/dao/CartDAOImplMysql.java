package com.javaee.dao;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dish;
import com.javaee.bean.User;

public class CartDAOImplMysql extends BaseDAO implements ICartDAO {
	@Override
	public int findDish(Dish dish,User user) {
		ArrayList<CartItem> arr;
		String sql = "select * from cart where DishId=? and UserId=?";
		Object[] params = {dish.getDishId(),user.getUserId()};
		arr=this.findObjs(sql, params, CartItem.class);
		 if(arr.size()>0) {
			 return arr.get(0).getDishNum();//返回该用户的购物车中该商品的数量
		 }
		 else return -1;
	}
	@Override
	public int addCartItem(User user,Dish dish,int num) {
		int check=findDish(dish,user);
		if(check==-1) {
			String sql = "insert into cart(UserId,DishId,DishName,DishNum,SumPrice,DishPic,DishDetails,OrderTime) values(?,?,?,?,?,?,?,?)";
			Object[] params = {user.getUserId(),dish.getDishId(),dish.getDishName(),num,dish.getDishPrice()*num,dish.getDishPic(),dish.getDishDetails(),LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")).toString()};
			return this.modifyObj(sql, params);
		}
		else {
			return updateCart(user.getUserId(),dish,num+check);
		}
	}
	
	@Override
	public int updateCart(int userid,Dish dish,int num) {
		String sql = "update cart set DishNum=?,SumPrice=?,OrderTime=? where DishId=? and UserId=?";
		Object[] params = {num,dish.getDishPrice()*num,LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")).toString(),dish.getDishId(),userid};
		return this.modifyObj(sql, params);
	}
	
	
	@Override
	public int deleteCart(Dish dish,int userid) {
		// TODO Auto-generated method stub
		String sql="delete from cart where DishId=? and UserId=?";
		Object[] params = {dish.getDishId(),userid};
		return this.modifyObj(sql, params);
	}
}
