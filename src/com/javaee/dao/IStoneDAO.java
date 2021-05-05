package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Animal;
import com.javaee.bean.Comment;
import com.javaee.bean.Dinosaur;
import com.javaee.bean.EarthGrow;
import com.javaee.bean.Stone;

public interface IStoneDAO {

	public ArrayList<Stone> findStonesBy(String sql, Object[] params);
	public int getTotalStoneRecords();
	Stone findStone(int sid);
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params);
	public int getTotalCommentRecords(int sid);
	int insertComment(Comment comment);
	public int getTotalUserCommentRecords(int userid);
	public int getTotalUserCommentRecords2(int userid);
	int updateStone(Stone stone);
	int deleteStone(Stone stone);	
	int insertStone(Stone stone);
	public int getTotalStoneRecords2();
	public ArrayList<EarthGrow> findEarthGrow(String sql, Object[] params);
	public ArrayList<Animal> findAnimalsBy(String sql, Object[] params);
	public ArrayList<Dinosaur> findDinosaursBy(String sql, Object[] params);
}
