package com.javaee.biz;

public interface ICommentServ {
	public int getTotalUserCommentRecords(int userid);//获取用户编号为userid的用户的总评论数
	public int getTotalCollectRecords(int userid);//获取用户编号为userid的用户的总收藏数
	//获取对文章的评论列表
	
}
