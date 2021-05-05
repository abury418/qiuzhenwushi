package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Comment;
import com.javaee.bean.Stone;

public interface IStoneServ {

	public ArrayList findStonePageList(int pageNo, int pageSize);
	public int getTotalRecords();
	public Stone findStoneDetails(int sid);
	public ArrayList findCommentPageList(int sid);
	public int getTotalCommentRecords(int sid);
	public void insertComment(Comment comment);
	public ArrayList findUserCommentPageList(int userid);//获取某用户对岩石所有的笔记列表
	public int getTotalUserCommentRecords(int userid);//获取某用户所有笔记数目
	public ArrayList findUserCommentPageList2(int userid);//获取某用户对文章所有的评论列表
	public int getTotalUserCommentRecords2(int userid);//获取某用户所有评论数目
	public void updateStone(Stone stone);
	public void deleteStone(Stone stone);
	public void insertStone(Stone stone);
	public ArrayList findStonesByLei(String lei);
	public int getTotalRecords2();
	public ArrayList findEarthGrow();
	public ArrayList findAnimals(String ansort);
	public ArrayList findDinosaurs(String disort,String dilei);
}
