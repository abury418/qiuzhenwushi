package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Dining;
import com.javaee.bean.Dish;

public interface IDiningServ {
	public ArrayList findDining4PageList(int pageNo, int pageSize);
	public int getTotalRecords();
	boolean validateDining(Dish dish);
	ArrayList getName(int diningid);
	public void updateDining(Dining dining);
	public void deleteDining(Dining dining);
	public void insertDining(Dining dining);
	

}
