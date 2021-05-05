package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Dining;
import com.javaee.bean.Dish;

public interface IDiningDAO {
	public ArrayList<Dining> findDiningsBy(String sql, Object[] params);
	int updateDining(Dining dining);
	
	ArrayList findDining(Dining dining);
	public int getTotalDiningRecords();
	
	ArrayList findDishs(int diningid);
	ArrayList getDiningName(int diningid);
	int deleteDining(Dining dining);
	
	int insertDining(Dining dining);
	Dining findDiningFromDishid(int dishid);
}
