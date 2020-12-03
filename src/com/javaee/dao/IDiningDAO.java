package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Dining;

public interface IDiningDAO {
	
	int updateDining(Dining dining);
	
	ArrayList findDining(Dining dining);
	
	public ArrayList<Dining> findDiningsBy(String sql, Object[] params);
	
	public int getTotalDiningRecords();
}
