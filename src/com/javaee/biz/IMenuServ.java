package com.javaee.biz;

import java.util.ArrayList;
import java.util.List;

import com.javaee.bean.Menu;

public interface IMenuServ {
	//��ȡ��ǰ�����Ĳ˵��б�
	public ArrayList<Menu> fetchAllMenusByDiningId(String diningid);
	
}
