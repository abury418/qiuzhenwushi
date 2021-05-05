package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.Cart;
import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.biz.CartServImpl;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.ICartServ;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.IDishServ;
import com.javaee.biz.IUserServ;
import com.javaee.biz.UserServImpl;
import com.javaee.dao.ICartDAO;
import com.javaee.util.DAOFactory;
@WebServlet("/addtocart")
public class AddToCart extends baseControl {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		switch (action) {
		case "add":
			add(request, response);break;
		case "update":
			add(request, response);break;
		}
		

	}
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num=Integer.parseInt(request.getParameter("numberOfDish"));
		int userid=Integer.parseInt(request.getParameter("UserId"));
		int dishid=Integer.parseInt(request.getParameter("DishId"));
		
		CartServImpl cartserv = (CartServImpl) DAOFactory.newInstance("ICartServ");
		DishServImpl dishserv = (DishServImpl) DAOFactory.newInstance("IDishServ");
		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");

		User user=userserv.maketoUser(userid);//��ȡ���û�����Ϣ
		Dish dish=dishserv.findDishDetails(dishid);//��ȡ����Ʒ������
		
		cartserv.addDish(user, dish, num);//������Ϊnum��dish�ӵ�user�Ĺ��ﳵ��

		DishServImpl disherv = (DishServImpl) DAOFactory.newInstance("IDishServ");
		Dish dishdetail = disherv.findDishDetails(dishid);
		request.setAttribute("dishdetail", dishdetail);//��ȡ����Ʒ������
		
		int dinid=dishdetail.getDiningId();
		DiningServImpl diningserv = (DiningServImpl) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dinName=diningserv.getName(dinid);
		request.setAttribute("dinName", dinName.get(0).getDiningName());//��ȡ����Ʒ�����̵������
		logger.debug(dishdetail);
		logger.debug(dinName);
		RequestDispatcher rd = request.getRequestDispatcher("/dishdetails.jsp");//����ˢ������ҳ
		rd.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	

}
