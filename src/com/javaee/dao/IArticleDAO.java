package com.javaee.dao;

import java.util.ArrayList;
import com.javaee.bean.Article;
import com.javaee.bean.Comment;

public interface IArticleDAO {
	
	public ArrayList<Article> findArticlesBy(String sql, Object[] params);
	public int getTotalArticleRecords();
	Article findArticle(int aid);
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params);
	public int getTotalCommentRecords(int aid);
	int insertComment(Comment comment);
	public ArrayList<Article> findArticlesByKeyWord(String keyword);
	public int getTotalUsersCommentRecords(int userid);//获取用户userid的总评论数目
	public int getTotalCollectRecords(int userid);//获取用户userid的总收藏数目
	int updateComment(Comment comment);
	int updateArticle(Article article);
	int deleteArticle(Article article);	
	int insertArticle(Article article);
}
