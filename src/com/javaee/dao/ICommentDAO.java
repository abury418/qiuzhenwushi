package com.javaee.dao;

public interface ICommentDAO {
	public int getTotalUserCommentRecords(int userid);//获取用户userid的总评论数目
	public int getTotalCollectRecords(int userid);//获取用户userid的总收藏数目
}
