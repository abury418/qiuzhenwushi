package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;
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
	
	@Override
	public User maketoUser(String username,String pwd) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		return (User)userdao.findUsers(username, pwd).get(0);
	//	return false;
	}
	@Override
	public User maketoUser(int userid) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		return (User)userdao.findUsers(userid).get(0);
	//	return false;
	}
	@Override
	public ArrayList findUsersPageList(int pageNo, int pageSize) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		String sql="select UserId,UserName,UserPhone,UserMail,UserImage,UserBrief from useraccount limit ?,?";
		Object[] params= {(pageNo-1)*pageSize,pageSize};
		return userdao.findUsersBy(sql, params);
	}

	@Override
	public int getTotalRecords() {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		return userdao.getTotalUserRecords();
	}

	@Override
	public void updateUserInfo(UserInfo userinfo) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.updateUserInfo(userinfo);
	}

	@Override
	public void deleteUserInfo(UserInfo userinfo) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.deleteUserInfo(userinfo);
	}

	@Override
	public void insertUserInfo(UserInfo userinfo) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.insertUserInfo(userinfo);
	}

	@Override
	public void insertUser(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.insertUser(user);
	}

	@Override
	public boolean validateAdminUser(AdminUser adminuser) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		if(userdao.findAdminUsers(adminuser.getAdmId(), adminuser.AdmPassword).size()>0) {
			return true;
		}
		return false;
	}

	@Override
	public AdminUser findAdminInfo(int admid) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		String sql="select AdmId,AdmName,AdmPhone,AdmMail,AdmPassword from adminaccount where AdmId=?";
		Object[] params= {admid};
		ArrayList<AdminUser> adminuserlist = userdao.findAdminUserInfosBy(sql, params);
		for(int i=0;i<adminuserlist.size();i++) 
			return adminuserlist.get(i);
		return null;
	}
	
	@Override
	public void updateAdmin(AdminUser adminuser) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.updateAdmin(adminuser);
	}

	@Override
	public void updateAdminPass(AdminUser adminuser) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.updateAdminPass(adminuser);
	}

	@Override
	public UserInfo maketoUserInfo(String username) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		return (UserInfo)userdao.findUserInfos(username).get(0);
	}

	@Override
	public void updateUser(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.updateUser(user);
	}

	@Override
	public void updateUserPwd(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.updateUserPwd(user);
	}

	@Override
	public void deleteUser(User user) {
		IUserDAO userdao = (IUserDAO) DAOFactory.newInstance("IUserDAO");
		userdao.deleteUser(user);
	}


}
