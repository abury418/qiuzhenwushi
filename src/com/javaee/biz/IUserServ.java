package com.javaee.biz;

import com.javaee.bean.User;

public interface IUserServ {
	
	/*
	 * �жϵ�¼ʱ������û��Ƿ����
	 */
	boolean validateUser(User user);
	
	/*
	 * �ж�ע��ʱ�û�����������Ƿ��Ѿ���ע���
	 */
	User validateMail(User user);
}
