package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Collects;
import com.javaee.dao.ICollectDAO;
import com.javaee.dao.IStoneDAO;
import com.javaee.util.DAOFactory;

public class CollectServImpl implements ICollectServ {

	@Override
	public void insertCollectStone(Collects collect) {
		ICollectDAO collectdao = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		collectdao.insertCollectStone(collect);
	}

	@Override
	public ArrayList findCollectsPageList(int pageNo, int pageSize) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		String sql="select * from collect limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return collectDAO.findCollectsBy(sql, params);
	}

	@Override
	public int getTotalRecords(int userid) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		return collectDAO.getTotalCollectsRecords(userid);
	}

	@Override
	public void deleteCollect(Collects collect) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		collectDAO.deleteCollect(collect);
	}

	@Override
	public ArrayList findUserCollectsPageList(int userid) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		String sql="select * from collect where UserId=? and AId=0";
		Object[] params= {userid};
		return collectDAO.findCollectsBy(sql, params);
	}

	@Override
	public ArrayList findArticleCollectsPageList(int userid) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		String sql="select * from collect where UserId=? and SId=0";
		Object[] params= {userid};
		return collectDAO.findCollectsBy(sql, params);
	}

	@Override
	public int getTotalArticleRecords(int userid) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		return collectDAO.getTotalArticleCollectsRecords(userid);
	}

	@Override
	public void deleteArticleCollect(Collects collect) {
		ICollectDAO collectDAO = (ICollectDAO) DAOFactory.newInstance("ICollectDAO");
		collectDAO.deleteArticleCollect(collect);
	}

}
