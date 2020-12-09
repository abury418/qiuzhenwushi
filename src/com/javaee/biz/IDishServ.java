package com.javaee.biz;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;

public interface IDishServ {
	
	public Map<Dish,Integer> fetchAlldishsByMenuId(String menuid);
	public Dish fetchDishById(String dishid);
	public ArrayList<Dish> fetchAlldishsByDiningId(String diningid);
	
	/*public ArrayList findDishPageList(int pageNo, int pageSize);
	public int getTotalRecords();*/
}
