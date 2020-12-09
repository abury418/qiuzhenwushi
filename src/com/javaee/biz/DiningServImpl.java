package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.dao.IDiningDAO;
import com.javaee.util.DAOFactory;

public class DiningServImpl implements IDiningServ {


	@Override
	public ArrayList findDining4PageList(int pageNo, int pageSize) {
		IDiningDAO diningDAO = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		String sql="select DiningId,DiningName,DiningPic,DiningPhone,DiningAddress,DiningClick,DistributeMoney from dining limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return diningDAO.findDiningsBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IDiningDAO diningDAO = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		return diningDAO.getTotalDiningRecords();
	}

}
