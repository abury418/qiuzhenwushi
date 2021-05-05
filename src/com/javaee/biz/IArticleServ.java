package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Article;
import com.javaee.bean.Comment;

public interface IArticleServ {
	public ArrayList findArticlePageList(int pageNo, int pageSize);
	public int getTotalRecords();
	public Article findArticleDetails(int aid);
	public ArrayList findCommentPageList(int aid);
	public int getTotalCommentRecords(int aid);
	public void insertComment(Comment comment);
	public ArrayList findArticlePageList2(String keyword);
	public int getTotalUserCommentRecords(int userid);//��ȡ�û����Ϊuserid���û�����������
	public int getTotalCollectRecords(int userid);//��ȡ�û����Ϊuserid���û������ղ���
	public void updateComment(Comment comment);
	public void updateArticle(Article article);
	public void deleteArticle(Article article);
	public void insertArticle(Article article);
}
