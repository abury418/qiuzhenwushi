package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.News;
import com.javaee.bean.Comment;

public interface INewsDAO {
	public ArrayList<News> findNewsBy(String sql, Object[] params);
	public int getTotalNewsRecords();
	News findNews(int nid);
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params);
	public int getTotalCommentRecords(int nid);
	int insertComment(Comment comment);
	int updateNews(News news);
	int deleteNews(News news);	
	int insertNews(News news);
}
