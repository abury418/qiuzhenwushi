package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Article;
import com.javaee.bean.Comment;
import com.javaee.dao.IArticleDAO;
import com.javaee.util.DAOFactory;

public class ArticleServImpl implements IArticleServ {

	@Override
	public ArrayList findArticlePageList(int pageNo, int pageSize) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		String sql="select * from article limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return articleDAO.findArticlesBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		return articleDAO.getTotalArticleRecords();
	}

	@Override
	public Article findArticleDetails(int aid) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		return articledao.findArticle(aid);
	}

	@Override
	public ArrayList findCommentPageList(int aid) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		String sql="select * from comment where AId=?";
		Object[] params= {aid};
		return articleDAO.findCommentsBy(sql, params);
	}

	@Override
	public int getTotalCommentRecords(int aid) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		return articleDAO.getTotalCommentRecords(aid);
	}

	@Override
	public void insertComment(Comment comment) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		articledao.insertComment(comment);
	}

	@Override
	public ArrayList findArticlePageList2(String keyword) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		String sql="select * from article where AKeyWord=?";
		Object[] params= {keyword};
		return articleDAO.findArticlesBy(sql, params);
	}

	@Override
	public int getTotalUserCommentRecords(int userid) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		return articleDAO.getTotalUsersCommentRecords(userid);
	}

	@Override
	public int getTotalCollectRecords(int userid) {
		IArticleDAO articleDAO = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		return articleDAO.getTotalCollectRecords(userid);
	}

	@Override
	public void updateComment(Comment comment) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		articledao.updateComment(comment);
	}

	@Override
	public void updateArticle(Article article) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		articledao.updateArticle(article);
	}

	@Override
	public void deleteArticle(Article article) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		articledao.deleteArticle(article);
	}

	@Override
	public void insertArticle(Article article) {
		IArticleDAO articledao = (IArticleDAO) DAOFactory.newInstance("IArticleDAO");
		articledao.insertArticle(article);
	}

}
