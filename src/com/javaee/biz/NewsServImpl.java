package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.Comment;
import com.javaee.bean.News;
import com.javaee.dao.IArticleDAO;
import com.javaee.dao.INewsDAO;
import com.javaee.util.DAOFactory;

public class NewsServImpl implements INewsServ {

	@Override
	public ArrayList findNewsPageList(int pageNo, int pageSize) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		String sql="select * from news limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return newsDAO.findNewsBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		return newsDAO.getTotalNewsRecords();
	}

	@Override
	public News findNewsDetails(int nid) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		return newsDAO.findNews(nid);
	}

	@Override
	public ArrayList findCommentPageList(int nid) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		String sql="select * from comment where NId=?";
		Object[] params= {nid};
		return newsDAO.findCommentsBy(sql, params);
	}

	@Override
	public int getTotalCommentRecords(int nid) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		return newsDAO.getTotalCommentRecords(nid);
	}

	@Override
	public void insertComment(Comment comment) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		newsDAO.insertComment(comment);
	}

	@Override
	public void updateNews(News news) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		newsDAO.updateNews(news);
	}

	@Override
	public void deleteNews(News news) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		newsDAO.deleteNews(news);
	}

	@Override
	public void insertNews(News news) {
		INewsDAO newsDAO = (INewsDAO) DAOFactory.newInstance("INewsDAO");
		newsDAO.insertNews(news);
	}

}
