package com.javaee.biz;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;
import com.javaee.dao.DishDAOImplMysql;
import com.javaee.dao.IDiningDAO;
import com.javaee.dao.IDishDAO;
import com.javaee.util.DAOFactory;

public class DishServImpl implements IDishServ {
	IDishDAO dishdao = new DishDAOImplMysql();
	@Override
	public Map<Dish, Integer> fetchAlldishsByMenuId(String menuid) {
		Map<Dish,Integer> map = null;
		try {
			map = dishdao.fetchAlldishsByMenuId(menuid);
		}catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Dish fetchDishById(String dishid) {
		/*Dish dish = null;
		try {
			dish = dishdao.fetc
		}*/
		return null;
	}

	@Override
	public ArrayList<Dish> fetchAlldishsByDiningId(String diningid) {
		ArrayList<Dish> dishlist = null;
		try {
			dishlist = dishdao.fetchAllDishsByDiningId(diningid);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}


	/*@Override
	public ArrayList findDishPageList(int pageNo, int pageSize) {
		IDishDAO dishDAO = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		String sql="select DishId,DishName,DishPic,DishPrice,DishSale,DishMarks,DishStock,DishDetails,VipDiscount from dish limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return dishDAO.findDishsBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IDishDAO dishDAO = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		return dishDAO.getTotalDishRecords();
	}*/
	
	

}
