package com.javaee.dao;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;

import com.javaee.bean.Dish;

public class DishDAOImplMysql extends BaseDAO implements IDishDAO {

	//起初版本函数
	@Override
	public int updateDish(Dish dining) {
		return 0;
	}

	@Override
	public ArrayList findDish(Dish dish) {
		String sql = "select * from dish where DiningId=?";
		Object[] params = {dish.getDishId()};
		return this.findObjs(sql, params, Dish.class);
	}

	@Override
	public ArrayList<Dish> findDishsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Dish.class);
	}

	@Override
	public int getTotalDishRecords() {
		String strsql="select count(*) from dish";
		return getTotalRecords(strsql);
	}
	//更新后函数

	@Override
	public Map<Dish, Integer> fetchAlldishsByMenuId(String menuid) throws Exception {
		Map<Dish,Integer> map = new IdentityHashMap<Dish,Integer>();
		String sql="select * dish where MenuId=?";
		Dish dish = new Dish();
		
		return null;
	}

	@Override
	public ArrayList<Dish> fetchAllDishsByDiningId(String diningid) throws Exception {
		
		return null;
	}
	
}
