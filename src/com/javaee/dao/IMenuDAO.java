package com.javaee.dao;

import java.util.ArrayList;
import java.util.List;

import com.javaee.bean.Menu;

public interface IMenuDAO {
	public ArrayList<Menu> fetchAllMenusByDiningId(String diningid) throws Exception;
}
