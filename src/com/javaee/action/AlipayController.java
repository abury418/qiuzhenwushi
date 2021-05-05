package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.Dining;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.biz.ICartItemServ;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.UserServImpl;
import com.javaee.dao.IDiningDAO;
import com.javaee.dao.IOrderDAO;
import com.javaee.util.DAOFactory;

@WebServlet("/alipay")
public class AlipayController extends baseControl{

	/*
	 * 用户登录验证
	 */
	private void toalipay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String no = request.getParameter("WIDout_trade_no");
		String price = request.getParameter("WIDtotal_amount");
		String name = request.getParameter("WIDsubject");
		String content = request.getParameter("WIDbody");
		
		request.getSession().setAttribute("WIDout_trade_no", no);
		request.getSession().setAttribute("WIDtotal_amount", price);
		request.getSession().setAttribute("WIDsubject", name);
		request.getSession().setAttribute("WIDbody", content);
		
		String name2=request.getParameter("NAME");
		String phone=request.getParameter("PHONE");
		String add=request.getParameter("ADDRESS");
				
		IOrderDAO dinDAO = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		dinDAO.addAdd(no, name2, phone, add);
		
		RequestDispatcher rd = request.getRequestDispatcher("/toAlipay.jsp");

		rd.forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");


		String action = request.getParameter("action");
		switch (action) {
		case "toalipay":
			toalipay(request, response);break;	
			
		
		}
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
