package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.News;
import com.javaee.bean.Comment;

public interface INewsServ {
	public ArrayList findNewsPageList(int pageNo, int pageSize);
	public int getTotalRecords();
	public News findNewsDetails(int nid);
	public ArrayList findCommentPageList(int nid);
	public int getTotalCommentRecords(int nid);
	public void insertComment(Comment comment);
	public void updateNews(News news);
	public void deleteNews(News news);
	public void insertNews(News news);
}
