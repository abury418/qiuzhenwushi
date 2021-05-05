package com.javaee.dao;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;

public interface IDishDAO {
	
	public ArrayList<Dish> findDishsBy(String sql, Object[] params);
	
	public int getTotalDishRecords();
	
	Dish findDish(int dishid);
	int updateDish(Dish dish);
	
	int deleteDish(Dish dish);
	
	int insertDish(Dish dish);

	
}
