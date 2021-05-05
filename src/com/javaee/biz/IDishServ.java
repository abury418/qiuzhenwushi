package com.javaee.biz;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;
import com.javaee.bean.User;

public interface IDishServ {
	
	public ArrayList findDishPageList(int pageNo, int pageSize);
	public int getTotalRecords();
	public Dish findDishDetails(int dishid);

	boolean validateDish(Dish dish);
	public void updateDish(Dish dish);
	public void deleteDish(Dish dish);
	public void insertDish(Dish dish);

}
