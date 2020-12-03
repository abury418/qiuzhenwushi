package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Dining;


public class DiningDAOImplMysql extends BaseDAO implements IDiningDAO {

	
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
	public ArrayList<Dining> findDiningsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Dining.class);
	}

	@Override
	public int getTotalDiningRecords() {
		String strsql="select count(*) from dining";
		return getTotalRecords(strsql);
	}

}
