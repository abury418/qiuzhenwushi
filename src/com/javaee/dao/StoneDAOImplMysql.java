package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Animal;
import com.javaee.bean.Comment;
import com.javaee.bean.Dining;
import com.javaee.bean.Dinosaur;
import com.javaee.bean.EarthGrow;
import com.javaee.bean.Stone;

public class StoneDAOImplMysql extends BaseDAO implements IStoneDAO {


	@Override
	public ArrayList<Stone> findStonesBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Stone.class);
	}

	@Override
	public int getTotalStoneRecords() {
		String strsql="select count(*) from stone";
		return getTotalRecords(strsql);
	}

	@Override
	public Stone findStone(int sid) {
		String sql = "select * from stone where SId=?";
		Object[] params = {sid};
		return (Stone)this.findObjs(sql, params, Stone.class).get(0);
	}

	@Override
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Comment.class);
	}

	@Override
	public int getTotalCommentRecords(int sid) {
		String strsql="select count(*) from comment where SId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int insertComment(Comment comment) {
		String sql = "insert into comment(SId,SName,AId,ATitle,NId,NTitle,UserId,UserName,CTime,CContent,CImage) values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params= {comment.getSId(),comment.getSName(),comment.getAId(),comment.getATitle(),comment.getNId(),comment.getNTitle(),comment.getUserId(),comment.getUserName(),comment.getCTime(),comment.getCContent(),comment.getCImage()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int getTotalUserCommentRecords(int userid) {
		String strsql="select count(*) from comment where UserId=? and AId=0 and NId=0";
		return getTotalRecords(strsql);
	}

	@Override
	public int getTotalUserCommentRecords2(int userid) {
		String strsql="select count(*) from comment where UserId=? and SId=0 and NId=0";
		return getTotalRecords(strsql);
	}

	@Override
	public int updateStone(Stone stone) {
		String sql = "update stone set SName=?,SEName=?,SUse=?,SComponent=?,SAppearance=? where SId=?";
		Object[] params = {stone.getSName(),stone.getSUse(),stone.getSComponent(),stone.getSAppearance(),stone.getSId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int deleteStone(Stone stone) {
		String sql="delete from stone where SId=?";
		Object[] params= {stone.getSId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int insertStone(Stone stone) {
		String sql = "insert into stone(SName,SEName,SCategory,SLei,SComponent,SDensity,SHardness,SOther,SClick,SAppearance,SEAppearance,SUse,SImage,SJiegou,SGouzao,SColor,SGuangze,STiaohen) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params= {stone.getSName(),stone.getSEName(),stone.getSCategory(),stone.getSLei(),stone.getSComponent(),stone.getSDensity(),stone.getSHardness(),stone.getSOther(),stone.getSClick(),stone.getSAppearance(),stone.getSEAppearance(),stone.getSUse(),stone.getSImage(),stone.getSJiegou(),stone.getSGouzao(),stone.getSColor(),stone.getSGuangze(),stone.getSTiaohen()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int getTotalStoneRecords2() {
		String strsql="select count(*) from stone where category=1";
		return getTotalRecords(strsql);
	}

	@Override
	public ArrayList<EarthGrow> findEarthGrow(String sql, Object[] params) {
		return this.findObjs(sql, params, EarthGrow.class);
	}

	@Override
	public ArrayList<Animal> findAnimalsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Animal.class);
	}

	@Override
	public ArrayList<Dinosaur> findDinosaursBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Dinosaur.class);
	}

}
