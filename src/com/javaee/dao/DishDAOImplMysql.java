package com.javaee.dao;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;

import com.javaee.bean.Dish;

public class DishDAOImplMysql extends BaseDAO implements IDishDAO {

	@Override
	public ArrayList<Dish> findDishsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Dish.class);
	}

	@Override
	public int getTotalDishRecords() {
		String strsql="select count(*) from dish";
		return getTotalRecords(strsql);
	}

	@Override
	public Dish findDish(int dishid) {
		String sql = "select * from dish where DishId=?";
		Object[] params = {dishid};
		return (Dish)this.findObjs(sql, params, Dish.class).get(0);
	}
	@Override
	public int updateDish(Dish dish) {
		String sql = "update dish set DishName=?,DishPrice=?,DishSale=?,DishStock=?,DishDetails=?,VipDiscount=? where DishId=?";
		Object[] params = {dish.getDishName(),dish.getDishPrice(),dish.getDishSale(),dish.getDishStock(),dish.getDishDetails(),dish.getVipDiscount(),dish.getDishId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int deleteDish(Dish dish) {
		String sql="delete from dish where DishId=?";
		Object[] params= {dish.getDishId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int insertDish(Dish dish) {
		String sql = "insert into dish(DishId,DishName,DishPic,DishPrice,DishSale,DishMarks,DishStock,DishDetails,DiningId,VipDiscount) values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params= {dish.getDiningId(),dish.getDishName(),dish.getDishPic(),dish.getDishPrice(),dish.getDishSale(),dish.getDishMarks(),dish.getDishStock(),dish.getDishDetails(),dish.getDiningId(),dish.getVipDiscount()};
		return this.modifyObj(sql, params);
	}


	
}
