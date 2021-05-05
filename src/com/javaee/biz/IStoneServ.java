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
	public ArrayList findUserCommentPageList(int userid);//��ȡĳ�û�����ʯ���еıʼ��б�
	public int getTotalUserCommentRecords(int userid);//��ȡĳ�û����бʼ���Ŀ
	public ArrayList findUserCommentPageList2(int userid);//��ȡĳ�û����������е������б�
	public int getTotalUserCommentRecords2(int userid);//��ȡĳ�û�����������Ŀ
	public void updateStone(Stone stone);
	public void deleteStone(Stone stone);
	public void insertStone(Stone stone);
	public ArrayList findStonesByLei(String lei);
	public int getTotalRecords2();
	public ArrayList findEarthGrow();
	public ArrayList findAnimals(String ansort);
	public ArrayList findDinosaurs(String disort,String dilei);
}
