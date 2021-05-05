package com.javaee.dao;

public class CommentDAOImplMysql extends BaseDAO implements ICommentDAO {
	@Override
	public int getTotalUserCommentRecords(int userid) {
		String strsql="select count(*) from comment where UserId=?";
		return getTotalRecords(strsql);
	}

	@Override
	public int getTotalCollectRecords(int userid) {
		String strsql="select count(*) from collect where UserId=?";
		return getTotalRecords(strsql);
	}

}
