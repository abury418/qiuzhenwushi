package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.AdminUser;
import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.IDishServ;
import com.javaee.biz.IUserServ;
import com.javaee.biz.UserServImpl;
import com.javaee.util.DAOFactory;
@WebServlet("/pagechange")
public class pagelistchange extends baseControl {
	/*
	 * 显示餐厅页面实现分页
	 */
	private void PageListDining(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dininglist = diningserv.findDining4PageList(pageNo, 5);
		logger.debug(dininglist);
		int totalRecords = diningserv.getTotalRecords();
		PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,pageNo,5,dininglist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/dinings.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 显示菜品页面实现分页
	 */
	private void PageListDish(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IDishServ dishserv = (IDishServ) DAOFactory.newInstance("IDishServ");
		ArrayList<Dish> dishlist = dishserv.findDishPageList(pageNo, 5);
		logger.debug(dishlist);
		int totalRecords = dishserv.getTotalRecords();
		PageModel<Dish> pageModel = new PageModel<Dish>(totalRecords,pageNo,5,dishlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admDishs.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * 显示用户页面实现分页
	 */
	private void PageListUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		ArrayList<UserInfo> userlist = userserv.findUserInfoPageList(pageNo, 5);
		logger.debug(userlist);
		int totalRecords = userserv.getTotalRecords();
		PageModel<UserInfo> pageModel = new PageModel<UserInfo>(totalRecords,pageNo,5,userlist);
		request.setAttribute("pageModel", pageModel);
		RequestDispatcher rd = request.getRequestDispatcher("/admUsers.jsp");
		rd.forward(request, response);*/
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
	    resp.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		switch(action) {
		case "pagelistdiningu":
			PageListDining(req,resp);break;
		case "pagelistdishu":
			PageListDish(req,resp);break;
		case "pagelistuseru":
			PageListUser(req,resp);break;
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
	    resp.setCharacterEncoding("utf-8");
		doGet(req, resp);
	}
}
