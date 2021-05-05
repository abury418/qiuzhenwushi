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
	public int getTotalUsersCommentRecords(int userid);//��ȡ�û�userid����������Ŀ
	public int getTotalCollectRecords(int userid);//��ȡ�û�userid�����ղ���Ŀ
	int updateComment(Comment comment);
	int updateArticle(Article article);
	int deleteArticle(Article article);	
	int insertArticle(Article article);
}
