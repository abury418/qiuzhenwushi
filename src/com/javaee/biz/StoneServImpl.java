package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Comment;
import com.javaee.bean.Stone;
import com.javaee.dao.IDiningDAO;
import com.javaee.dao.IDishDAO;
import com.javaee.dao.IStoneDAO;
import com.javaee.util.DAOFactory;

public class StoneServImpl implements IStoneServ {


	@Override
	public ArrayList findStonePageList(int pageNo, int pageSize) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from stone limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return stoneDAO.findStonesBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stoneDAO.getTotalStoneRecords();
	}

	@Override
	public Stone findStoneDetails(int sid) {
		IStoneDAO stonedao = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stonedao.findStone(sid);
	}

	@Override
	public ArrayList findCommentPageList(int sid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from comment where SId=?";
		Object[] params= {sid};
		return stoneDAO.findCommentsBy(sql, params);
	}

	@Override
	public int getTotalCommentRecords(int sid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stoneDAO.getTotalCommentRecords(sid);
	}

	@Override
	public void insertComment(Comment comment) {
		IStoneDAO stonedao = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		stonedao.insertComment(comment);
	}

	@Override
	public ArrayList findUserCommentPageList(int userid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from comment where UserId=? and AId=0 and NId=0";
		Object[] params= {userid};
		return stoneDAO.findCommentsBy(sql, params);
	}

	@Override
	public int getTotalUserCommentRecords(int userid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stoneDAO.getTotalUserCommentRecords(userid);
	}

	@Override
	public ArrayList findUserCommentPageList2(int userid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from comment where UserId=? and SId=0 and NId=0";
		Object[] params= {userid};
		return stoneDAO.findCommentsBy(sql, params);
	}

	@Override
	public int getTotalUserCommentRecords2(int userid) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stoneDAO.getTotalUserCommentRecords2(userid);
	}

	@Override
	public void updateStone(Stone stone) {
		IStoneDAO stonedao = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		stonedao.updateStone(stone);
	}

	@Override
	public void deleteStone(Stone stone) {
		IStoneDAO stonedao = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		stonedao.deleteStone(stone);
	}

	@Override
	public void insertStone(Stone stone) {
		IStoneDAO stonedao = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		stonedao.insertStone(stone);
	}

	@Override
	public ArrayList findStonesByLei(String lei) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from stone where SLei=?";
		Object[] params= {lei};
		return stoneDAO.findStonesBy(sql, params);
	}

	@Override
	public int getTotalRecords2() {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		return stoneDAO.getTotalStoneRecords2();
	}

	@Override
	public ArrayList findEarthGrow() {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from earthgrow";
		Object[] params= {};
		return stoneDAO.findEarthGrow(sql, params);
	}

	@Override
	public ArrayList findAnimals(String ansort) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from animal where ANSort=?";
		Object[] params= {ansort};
		return stoneDAO.findAnimalsBy(sql, params);
	}

	@Override
	public ArrayList findDinosaurs(String disort, String dilei) {
		IStoneDAO stoneDAO = (IStoneDAO) DAOFactory.newInstance("IStoneDAO");
		String sql="select * from dinosaur where DISort=? AND DILei=?";
		Object[] params= {disort,dilei};
		return stoneDAO.findDinosaursBy(sql, params);

	}

}
