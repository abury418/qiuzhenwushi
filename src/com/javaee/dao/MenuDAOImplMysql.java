package com.javaee.dao;

import java.util.ArrayList;
import java.util.List;

import com.javaee.bean.Menu;

public class MenuDAOImplMysql extends BaseDAO implements IMenuDAO {

	
	@Override
	public ArrayList<Menu> fetchAllMenusByDiningId(String diningid) throws Exception {
		ArrayList<Menu> menulist = new ArrayList<Menu>();
		String sql = "select * from menu where DiningId=?";
		Object[] params = {diningid};
		return this.findObjs(sql, params, Menu.class);
	}

}
