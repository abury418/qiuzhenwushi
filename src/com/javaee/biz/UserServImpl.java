package com.javaee.biz;

import com.javaee.bean.User;
import com.javaee.dao.IUserDAO;
import com.javaee.util.DAOFactory;

public class UserServImpl implements IUserServ {

	@Override
	public boolean validateUser(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		if(userdao.findUsers(user.getUserName(), user.UserPassword).size()>0) {
			return true;
		}
		return false;
	}

	@Override
	public User validateMail(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		if(userdao.findUserByMail(user.getUserMail()).size()>0) {//ÓÊÏä±»×¢²áÁË
			return user;
		}
		userdao.insertUser(user);
		return null;
	}

	
}
