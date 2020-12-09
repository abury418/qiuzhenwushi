package com.javaee.biz;

import java.util.ArrayList;
import java.util.List;

import com.javaee.bean.Menu;
import com.javaee.dao.IMenuDAO;
import com.javaee.dao.MenuDAOImplMysql;

public class MenuServImpl implements IMenuServ {

	IMenuDAO menudao = new MenuDAOImplMysql();
	@Override
	public ArrayList<Menu> fetchAllMenusByDiningId(String diningid) {
		ArrayList<Menu> menulist = null;
		try {
			menulist = menudao.fetchAllMenusByDiningId(diningid);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
