package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.dao.IDiningDAO;
import com.javaee.dao.IDishDAO;
import com.javaee.util.DAOFactory;

public class DiningServImpl implements IDiningServ {


	@Override
	public ArrayList findDining4PageList(int pageNo, int pageSize) {
		IDiningDAO diningDAO = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		String sql="select * from dining limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return diningDAO.findDiningsBy(sql, params);
	}
	@Override
	public int getTotalRecords() {
		IDiningDAO diningDAO = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		return diningDAO.getTotalDiningRecords();
	}
	
	@Override
	public boolean validateDining(Dish dish) {
		IDiningDAO diningdao = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		if(diningdao.findDishs(dish.getDiningId()).size()>0) {
			return true;
		}
		return false;
	}

	@Override
	public ArrayList getName(int diningid) {
		IDiningDAO diningdao = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		return diningdao.getDiningName(diningid);
	}
	/*
	 * 管理员修改餐厅信息
	 * @see com.javaee.biz.IDiningServ#updateDining(com.javaee.bean.Dining)
	 */
	@Override
	public void updateDining(Dining dining) {
		IDiningDAO diningdao = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		diningdao.updateDining(dining);
	}

	/*
	 * 管理员删除餐厅信息
	 * @see com.javaee.biz.IDiningServ#deleteDining(com.javaee.bean.Dining)
	 */
	@Override
	public void deleteDining(Dining dining) {
		IDiningDAO diningdao = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		diningdao.deleteDining(dining);
	}

	/*
	 * 管理员录入餐厅信息
	 * @see com.javaee.biz.IDiningServ#insertDining(com.javaee.bean.Dining)
	 */
	@Override
	public void insertDining(Dining dining) {
		IDiningDAO diningdao = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		diningdao.insertDining(dining);
	}
}
