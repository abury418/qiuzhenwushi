package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Collects;

public interface ICollectServ {
	public void insertCollectStone(Collects collect);
	public ArrayList findCollectsPageList(int pageNo, int pageSize);
	public int getTotalRecords(int userid);
	public void deleteCollect(Collects collect);
	public ArrayList findUserCollectsPageList(int userid);
	public ArrayList findArticleCollectsPageList(int userid);
	public int getTotalArticleRecords(int userid);
	public void deleteArticleCollect(Collects collect);
}
