package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Collects;

public class CollectDAOImplMysql extends BaseDAO implements ICollectDAO {

	@Override
	public int insertCollectStone(Collects collect) {
		String sql = "insert into collect(UserId,SId,SName,SImage,SLei,COMark,COTime,COFileId,CommentSize) values(?,?,?,?,?,?,?,?,?)";
		Object[] params= {collect.getUserId(),collect.getSId(),collect.getSName(),collect.getSImage(),collect.getSLei(),collect.getCOMark(),collect.getCOTime(),collect.getCOFileId(),collect.getCommentSize()};
		return this.modifyObj(sql, params);
	}

	@Override
	public ArrayList<Collects> findCollectsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Collects.class);
	}

	@Override
	public int getTotalCollectsRecords(int userid) {
		String strsql="select count(*) from collect where UserId=? And AId=0";
		return getTotalRecords(strsql);
	}

	@Override
	public int deleteCollect(Collects collect) {
		String sql="delete from collect where UserId=? And SId=?";
		Object[] params= {collect.getUserId(),collect.getSId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int getTotalArticleCollectsRecords(int userid) {
		String strsql="select count(*) from collect where UserId=? And SId=0";
		return getTotalRecords(strsql);
	}

	@Override
	public int deleteArticleCollect(Collects collect) {
		String sql="delete from collect where UserId=? And AId=?";
		Object[] params= {collect.getUserId(),collect.getAId()};
		return this.modifyObj(sql, params);
	}

}
