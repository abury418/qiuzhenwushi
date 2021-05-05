package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Collects;

public interface ICollectDAO {
	int insertCollectStone(Collects collect);
	public ArrayList<Collects> findCollectsBy(String sql, Object[] params);
	public int getTotalCollectsRecords(int userid);
	int deleteCollect(Collects collect);
	public int getTotalArticleCollectsRecords(int userid);
	int deleteArticleCollect(Collects collect);
}
