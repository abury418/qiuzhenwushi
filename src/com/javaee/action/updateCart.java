package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.PageModel;
import com.javaee.biz.CartServImpl;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.ICartItemServ;
import com.javaee.biz.ICartServ;
import com.javaee.biz.IDishServ;
import com.javaee.biz.IUserServ;
import com.javaee.dao.CartDAOImplMysql;
import com.javaee.util.DAOFactory;

@WebServlet("/updatecart")
public class updateCart  extends baseControl{

	private void deleteCartItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//��ȡ�������Ĳ�Ʒid
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		int userid = Integer.parseInt(request.getParameter("UserId"));
		System.out.println(dishid);
		System.out.println(userid);

		DishServImpl disherv = (DishServImpl) DAOFactory.newInstance("IDishServ");
		Dish dish = disherv.findDishDetails(dishid);
		
		CartServImpl cartserv = (CartServImpl) DAOFactory.newInstance("ICartServ");
		cartserv.deleteDish(dish,userid);//delete

	}
	
	private void updateCartItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//��ȡ�������Ĳ�Ʒid
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		int userid = Integer.parseInt(request.getParameter("UserId"));
		int dishNum = Integer.parseInt(request.getParameter("DishNum"));
		
		//������Ʒ����
		Dish dish=new Dish();
		DishServImpl dishserv=(DishServImpl)DAOFactory.newInstance("IDishServ");//��һ����ģ�壬���ܸ�
		//����dishid��ѯ�õ�һ����Ʒ����
		dish=dishserv.findDishDetails(dishid);
		
		
		//����Serv�����ӿ�
		CartServImpl cartserv=(CartServImpl)DAOFactory.newInstance("ICartServ");//��һ����ģ�壬���ܸ�
		//����CartServ�ĸ��º���
		cartserv.updateDish(userid, dish, dishNum);
		
		
		
		
		// ��ת��dishs.jspҳ��
		//RequestDispatcher rd = request.getRequestDispatcher("dishs.jsp");
		//rd.forward(request, response);
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		switch (action) {
		case "delete":
			deleteCartItem(request, response);break;	
		case "update":
			updateCartItem(request, response);break;	
		
		}
		/**/
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
