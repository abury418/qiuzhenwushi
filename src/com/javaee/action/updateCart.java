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
		
		
		//获取传过来的菜品id
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
		
		
		//获取传过来的菜品id
		int dishid = Integer.parseInt(request.getParameter("DishId"));
		int userid = Integer.parseInt(request.getParameter("UserId"));
		int dishNum = Integer.parseInt(request.getParameter("DishNum"));
		
		//创建菜品对象
		Dish dish=new Dish();
		DishServImpl dishserv=(DishServImpl)DAOFactory.newInstance("IDishServ");//这一行是模板，不能改
		//根据dishid查询得到一个菜品对象
		dish=dishserv.findDishDetails(dishid);
		
		
		//创建Serv函数接口
		CartServImpl cartserv=(CartServImpl)DAOFactory.newInstance("ICartServ");//这一行是模板，不能改
		//调用CartServ的更新函数
		cartserv.updateDish(userid, dish, dishNum);
		
		
		
		
		// 跳转到dishs.jsp页面
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
