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
	 * 用户登录验证
	 */
	private void loginCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("loginName");
		String password = request.getParameter("loginPass");
		// 用户身份验证
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		if (userserv.validateUser(user)) {// 验证通过
			IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
			ArrayList<Dining> dininglist = diningserv.findDish4PageList(1, 3);
			logger.debug(dininglist);
			int totalRecords = diningserv.getTotalRecords();
			PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,1,3,dininglist);
			request.setAttribute("pageModel", pageModel);
			request.setAttribute("loginuser", user);
			// 跳转到show.jsp页面
			rd.forward(request, response);
		} else {// 验证失败
			response.sendRedirect("login.jsp");
		}
	}
	
	/*
	 * 用户注册
	 */
	private void registerCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("registerName");
		String password = request.getParameter("registerPass");
		String usermail = request.getParameter("registerMail");
		// 用户身份验证
		User user = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		user.setUserMail(usermail);
		
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		
		if (userserv.validateMail(user)==null) {// 邮箱未被注册过
			request.setAttribute("registeruser", user);
			// 跳转到index.jsp页面
			rd.forward(request, response);
		} else {// 验证失败
			JOptionPane.showMessageDialog(null, "邮箱已被注册过！", "注册失败", JOptionPane.WARNING_MESSAGE);
			request.setAttribute("", "邮箱已存在！");
			response.sendRedirect("login.jsp");
		}
	}
	
	/*
	 * 页面控制
	 */
	private void PageList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("PageNo"));
		IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dininglist = diningserv.findDish4PageList(pageNo, 3);
		logger.debug(dininglist);
		int totalRecords = diningserv.getTotalRecords();
		PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,pageNo,3,dininglist);
		request.setAttribute("pageModel", pageModel);
		// 跳转到show.jsp页面
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
