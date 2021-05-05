package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.AdminUser;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;

public interface IUserServ {
	
	/*
	 * �жϵ�¼ʱ������û��Ƿ����
	 */
	boolean validateUser(User user);
	
	/*
	 * �ж�ע��ʱ�û�����������Ƿ��Ѿ���ע���
	 */
	User validateMail(User user);
	User maketoUser(String username,String pwd);
	User maketoUser(int userid);
	/*
	 * �����û���Ϣ�б�
	 */
	public ArrayList findUsersPageList(int pageNo, int pageSize);
	public int getTotalRecords();
	
	/*
	 * ���¡�ɾ���û���Ϣ
	 */
	public void updateUserInfo(UserInfo userinfo);
	public void deleteUserInfo(UserInfo userinfo);
	public void insertUserInfo(UserInfo userinfo);
	public void insertUser(User user);//�����ڹ���Ա¼���û���Ϣʱ���û��˺�Ҳ¼�룬��ʱĬ����������û����û���+�����ַ
	
	boolean validateAdminUser(AdminUser adminuser);
	public AdminUser findAdminInfo(int admid);
	public void updateAdmin(AdminUser adminuser);
	public void updateAdminPass(AdminUser adminuser);

	/*
	 * �¼ӣ����˿ռ����
	 */
	UserInfo maketoUserInfo(String username);
	public void updateUser(User user);
	public void updateUserPwd(User user);
	public void deleteUser(User user);

}
