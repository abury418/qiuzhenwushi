package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.Article;
import com.javaee.bean.Comment;
import com.javaee.bean.News;

public class NewsDAOImplMysql extends BaseDAO implements INewsDAO {

	@Override
	public ArrayList<News> findNewsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, News.class);
	}

	@Override
	public int getTotalNewsRecords() {
		String strsql="select count(*) from news";
		return getTotalRecords(strsql);
	}

	@Override
	public News findNews(int nid) {
		String sql = "select * from news where NId=?";
		Object[] params = {nid};
		return (News)this.findObjs(sql, params, News.class).get(0);
	}

	@Override
	public ArrayList<Comment> findCommentsBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Comment.class);
	}

	@Override
	public int getTotalCommentRecords(int nid) {
		String strsql="select count(*) from comment where NId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int insertComment(Comment comment) {
		String sql = "insert into comment(NId,UserId,UserName,CTime,CContent,CImage) values(?,?,?,?,?,?)";
		Object[] params= {comment.getNId(),comment.getUserId(),comment.getUserName(),comment.getCTime(),comment.getCContent(),comment.getCImage()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int updateNews(News news) {
		String sql = "update news set NTitle=?,NAuthorName=?,NAuthorMail=? where NId=?";
		Object[] params = {news.getNTitle(),news.getNAuthorName(),news.getNAuthorMail(),news.getNId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int deleteNews(News news) {
		String sql="delete from news where NId=?";
		Object[] params= {news.getNId()};
		return this.modifyObj(sql, params);
	}

	@Override
	public int insertNews(News news) {
		String sql = "insert into news(NTitle,NContent,NMContent,NAuthorName,NAuthorMail,NAuthorBrief,NAuthorImg,NImage) values(?,?,?,?,?,?,?,?)";
		Object[] params= {news.getNTitle(),news.getNContent(),news.getNMContent(),news.getNAuthorName(),news.getNAuthorMail(),news.getNAuthorBrief(),news.getNAuthorImg(),news.getNImage()};
		return this.modifyObj(sql, params);
	}

}
