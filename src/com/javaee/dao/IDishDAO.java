package com.javaee.dao;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;

public interface IDishDAO {
	//起初版本
	int updateDish(Dish dish);
	
	ArrayList findDish(Dish dish);
	
	public ArrayList<Dish> findDishsBy(String sql, Object[] params);
	
	public int getTotalDishRecords();
	//更新后的函数部分
	public Map<Dish,Integer> fetchAlldishsByMenuId(String menuid) throws Exception;
	public ArrayList<Dish> fetchAllDishsByDiningId(String diningid) throws Exception;
	
}
