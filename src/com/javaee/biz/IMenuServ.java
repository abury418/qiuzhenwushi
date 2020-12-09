package com.javaee.biz;

import java.util.ArrayList;
import java.util.List;

import com.javaee.bean.Menu;

public interface IMenuServ {
	//获取当前餐厅的菜单列表
	public ArrayList<Menu> fetchAllMenusByDiningId(String diningid);
	
}
