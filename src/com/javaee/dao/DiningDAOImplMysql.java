package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Dining;
import com.javaee.bean.Dish;


public class DiningDAOImplMysql extends BaseDAO implements IDiningDAO {

	
	@Override
	public ArrayList<Dining> findDiningsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Dish.class);
	}

	@Override
	public int updateDining(Dining dining) {
		return 0;
	}

	@Override
	public ArrayList findDining(Dining dining) {
		String sql = "select * from dining where DiningId=?";
		Object[] params = {dining.getDiningId()};
		return this.findObjs(sql, params, Dining.class);
	}


	@Override
	public int getTotalDiningRecords() {
		String strsql="select count(*) from dining";
		return getTotalRecords(strsql);
	}

	@Override
	public ArrayList findDishs(int diningid) {
		String sql = "select * from dish where DiningId=?";
		Object[] params = {diningid};
		return this.findObjs(sql, params, Dish.class);
	}

	@Override
	public ArrayList getDiningName(int diningid) {
		String sql = "select * from dining where DiningId=?";
		Object[] params = {diningid};
		return this.findObjs(sql, params,Dining.class);
	}
	/*
	 * 管理员删除餐厅信息
	 * @see com.javaee.dao.IDiningDAO#deleteDining(com.javaee.bean.Dining)
	 */
	@Override
	public int deleteDining(Dining dining) {
		String sql="delete from dining where DiningId=?";
		Object[] params= {dining.getDiningId()};
		return this.modifyObj(sql, params);
	}

	/*
	 * 管理员录入新餐厅
	 * @see com.javaee.dao.IDiningDAO#insertDining(com.javaee.bean.Dining)
	 */
	@Override
	public int insertDining(Dining dining) {
		String sql = "insert into dining(DiningName,DiningPic,DiningPhone,DiningAddress,DiningClick,DistributeMoney) values(?,?,?,?,?,?)";
		Object[] params= {dining.getDiningName(),dining.getDiningPic(),dining.getDiningPhone(),dining.getDiningAddress(),dining.getDiningClick(),dining.getDistributeMoney()};
		return this.modifyObj(sql, params);
	}
	@Override
	public Dining findDiningFromDishid(int Dishid) {
		String sql = "select * from dish where DishId=?";
		Object[] params= {Dishid};
		return (Dining)this.findObjs(sql, params,Dining.class).get(0);
	}
}
