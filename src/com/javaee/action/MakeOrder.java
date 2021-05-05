package com.javaee.action;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.CartItem;
import com.javaee.bean.Comment;
import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.Order;
import com.javaee.bean.User;
import com.javaee.biz.ArticleServImpl;
import com.javaee.biz.CartItemServImpl;
import com.javaee.biz.CartServImpl;
import com.javaee.biz.DiningServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IOrderServ;
import com.javaee.biz.OrderServImpl;
import com.javaee.biz.UserServImpl;
import com.javaee.dao.IDiningDAO;
import com.javaee.util.DAOFactory;
@WebServlet("/makeorder")
public class MakeOrder  extends baseControl {
	
	private void mkorder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid=Integer.parseInt(request.getParameter("UserId"));
		String str2 =request.getParameter("ids");
		String []S= str2.split(",");
		ArrayList<Integer> arrintt=new ArrayList<Integer>();
		
		for(int i=0;i<S.length;i++) {
			arrintt.add(Integer.parseInt(S[i]));
		}

		CartItemServImpl cartitemserv = (CartItemServImpl) DAOFactory.newInstance("ICartItemServ");
		
		ArrayList<CartItem> arr=new ArrayList<CartItem>(); 
		
		for(int i=0;i<arrintt.size();i++) {
			int num=arrintt.get(i);
			
			CartItem tmp=cartitemserv.FindDish(userid, num);
			arr.add(tmp);
		}

		request.getSession().setAttribute("orderlist", arr);
		
		logger.debug(arr);

		String orid=LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")).toString();
		orid=orid.replace("-", "");
		orid=orid.replace(" ", "");
		orid=orid.replace(":", "");
		String tmp;
		tmp=Integer.toString((int)(Math.random()*100));
		if(tmp.length()==1)tmp="0"+tmp;
		orid+=tmp;
		
		tmp=Integer.toString(arr.get(0).getUserId()%100);
		if(tmp.length()==1)tmp="0"+tmp;
		orid+=tmp;
	
		IDiningDAO dinDAO = (IDiningDAO) DAOFactory.newInstance("IDiningDAO");
		int dinid= dinDAO.findDiningFromDishid(arr.get(0).getDishId()).getDiningId();
		tmp=Integer.toString(dinid%100);
		if(tmp.length()==1)tmp="0"+tmp;
		orid+=tmp;
		
		tmp=Integer.toString((int)(Math.random()*100));
		if(tmp.length()==1)tmp="0"+tmp;
		orid+=tmp;
		
		OrderServImpl orserv=(OrderServImpl)DAOFactory.newInstance("IOrderServ");
		String str=orserv.makeOrder(arr);
		request.getSession().setAttribute("orderid", str);
		
		//这里需要调转到checkout界面，但是跳转不过去，因为使用了ajax
	}
	
	/*
	 * 跳转到用户的钱包页面
	 * 用户总支出
	 * 用户已完成历史订单列表
	 * 用户已完成订单总数
	 * 用户购物车内商品总数
	 * 用户购物车商品列表
	 * 假定购物车最大容量为120，计算剩余容量
	 */
	private void toMyWallet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取传过来的用户id
		int userid = Integer.parseInt(request.getParameter("UserId"));
		//获取已完成订单列表
		OrderServImpl orderserv = (OrderServImpl) DAOFactory.newInstance("IOrderServ");
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		request.setAttribute("orderlist", orderlist);
		logger.debug(orderlist);
		
		//获取购物车商品列表
		CartItemServImpl cartitemserv = (CartItemServImpl) DAOFactory.newInstance("ICartItemServ");
		ArrayList<CartItem> cartitemlist=cartitemserv.findAllCartItem(userid);
		request.setAttribute("cartitemlist", cartitemlist);
		logger.debug(cartitemlist);
		
		RequestDispatcher rd = request.getRequestDispatcher("my_wallet.jsp");
		rd.forward(request, response);
	}
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		switch (action) {
		case "mkorder":
			mkorder(request, response);break;
		case "tomywallet":
			toMyWallet(request, response);break;
		}
		

	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
