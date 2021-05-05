package com.javaee.biz;

import com.javaee.dao.ICommentDAO;
import com.javaee.util.DAOFactory;

public class CommentServImpl implements ICommentServ {

	@Override
	public int getTotalUserCommentRecords(int userid) {
		ICommentDAO commentDAO = (ICommentDAO) DAOFactory.newInstance("ICommentDAO");
		return commentDAO.getTotalUserCommentRecords(userid);
	}

	@Override
	public int getTotalCollectRecords(int userid) {
		ICommentDAO collectDAO = (ICommentDAO) DAOFactory.newInstance("ICommentDAO");
		return collectDAO.getTotalCollectRecords(userid);
	}

}
