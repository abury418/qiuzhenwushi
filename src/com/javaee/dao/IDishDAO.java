package com.javaee.dao;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;

public interface IDishDAO {
	//����汾
	int updateDish(Dish dish);
	
	ArrayList findDish(Dish dish);
	
	public ArrayList<Dish> findDishsBy(String sql, Object[] params);
	
	public int getTotalDishRecords();
	//���º�ĺ�������
	public Map<Dish,Integer> fetchAlldishsByMenuId(String menuid) throws Exception;
	public ArrayList<Dish> fetchAllDishsByDiningId(String diningid) throws Exception;
	
}
