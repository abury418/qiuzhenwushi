package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Article;
import com.javaee.bean.Comment;

public class ArticleDAOImplMysql extends BaseDAO implements IArticleDAO {

	@Override
	public ArrayList<Article> findArticlesBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Article.class);
	}

	@Override
	public int getTotalArticleRecords() {
		String strsql="select count(*) from article";
		return getTotalRecords(strsql);
	}

	@Override
	public Article findArticle(int aid) {
		String sql = "select * from article where AId=?";
		Object[] params = {aid};
		return (Article)this.findObjs(sql, params, Article.class).get(0);
	}

	@Override
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Comment.class);
	}

	@Override
	public int getTotalCommentRecords(int aid) {
		String strsql="select count(*) from comment where AId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int insertComment(Comment comment) {
		String sql = "insert into comment(AId,UserId,UserName,CTime,CContent,CImage) values(?,?,?,?,?,?)";
		Object[] params= {comment.getAId(),comment.getUserId(),comment.getUserName(),comment.getCTime(),comment.getCContent(),comment.getCImage()};
		return this.modifyObj(sql, params);
	}

	@Override
	public ArrayList<Article> findArticlesByKeyWord(String keyword) {
		String sql = "select * from article where AKeyWord=?";
		Object[] params = {keyword};
		return this.findObjs(sql, params, Article.class);
	}

	@Override
	public int getTotalUsersCommentRecords(int userid) {
		String strsql="select count(*) from comment where UserId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int getTotalCollectRecords(int userid) {
		String strsql="select count(*) from collect where UserId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int updateComment(Comment comment) {
		String sql = "update comment set CContent=? where CId=?";
		Object[] params = {comment.getCContent(),comment.getCId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int updateArticle(Article article) {
		String sql = "update article set ATitle=?,AKeyWord=? where AId=?";
		Object[] params = {article.getATitle(),article.getAKeyWord(),article.getAId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int deleteArticle(Article article) {
		String sql="delete from article where AId=?";
		Object[] params= {article.getAId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int insertArticle(Article article) {
		String sql = "insert into article(ATitle,AContent,AMContent,AKeyWord,AImage) values(?,?,?,?,?)";
		Object[] params= {article.getATitle(),article.getAContent(),article.getAMContent(),article.getAKeyWord(),article.getAImage()};
		return this.modifyObj(sql, params);
	}
}
