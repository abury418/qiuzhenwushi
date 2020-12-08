package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.javaee.bean.Dining;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.UserServImpl;
import com.javaee.util.DAOFactory;

@WebServlet("/loginctrl")
public class LoginCtrl extends baseControl {

	/*
	 * �û���¼��֤
	 */
	private void loginCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("loginName");
		String password = request.getParameter("loginPass");
		// �û������֤
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		if (userserv.validateUser(user)) {// ��֤ͨ��
			IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
			ArrayList<Dining> dininglist = diningserv.findDish4PageList(1, 3);
			logger.debug(dininglist);
			int totalRecords = diningserv.getTotalRecords();
			PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,1,3,dininglist);
			request.setAttribute("pageModel", pageModel);
			request.setAttribute("loginuser", user);
			// ��ת��show.jspҳ��
			rd.forward(request, response);
		} else {// ��֤ʧ��
			response.sendRedirect("login.jsp");
		}
	}
	
	/*
	 * �û�ע��
	 */
	private void registerCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("registerName");
		String password = request.getParameter("registerPass");
		String usermail = request.getParameter("registerMail");
		// �û������֤
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		user.setUserMail(usermail);
		
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		
		if (userserv.validateMail(user)==null) {// ����δ��ע���
			request.setAttribute("registeruser", user);
			// ��ת��index.jspҳ��
			rd.forward(request, response);
		} else {// ��֤ʧ��
			JOptionPane.showMessageDialog(null, "�����ѱ�ע�����", "ע��ʧ��", JOptionPane.WARNING_MESSAGE);
			request.setAttribute("", "�����Ѵ��ڣ�");
			response.sendRedirect("login.jsp");
		}
	}
	
	/*
	 * ҳ�����
	 */
	private void PageList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("PageNo"));
		IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dininglist = diningserv.findDish4PageList(pageNo, 3);
		logger.debug(dininglist);
		int totalRecords = diningserv.getTotalRecords();
		PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,pageNo,3,dininglist);
		request.setAttribute("pageModel", pageModel);
		// ��ת��show.jspҳ��
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		switch (action) {
		case "loginctrl":
			loginCtrl(request, response);break;	
		case "registerctrl":
			registerCtrl(request, response);break;		
		case "pagelist":
			PageList(request, response);break;	
		}
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
