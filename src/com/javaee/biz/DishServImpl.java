package com.javaee.biz;

import java.util.ArrayList;
import java.util.Map;

import com.javaee.bean.Dish;
import com.javaee.dao.DishDAOImplMysql;
import com.javaee.dao.IDiningDAO;
import com.javaee.dao.IDishDAO;
import com.javaee.util.DAOFactory;

public class DishServImpl implements IDishServ {
	

	@Override
	public ArrayList findDishPageList(int pageNo, int pageSize) {
		IDishDAO dishDAO = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		String sql="select * from dish limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return dishDAO.findDishsBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IDishDAO dishDAO = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		return dishDAO.getTotalDishRecords();
	}

	@Override
	public Dish findDishDetails(int dishid) {
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		return dishdao.findDish(dishid);
	}

	@Override
	public boolean validateDish(Dish dish) {
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		if(dishdao.findDish(dish.getDishId())!=null) {
			return true;
		}
		return false;
	}
	@Override
	public void updateDish(Dish dish) {
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		dishdao.updateDish(dish);
	}

	@Override
	public void deleteDish(Dish dish) {
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		dishdao.deleteDish(dish);
	}

	@Override
	public void insertDish(Dish dish) {
		IDishDAO dishdao = (IDishDAO) DAOFactory.newInstance("IDishDAO");
		dishdao.insertDish(dish);
	}


}
