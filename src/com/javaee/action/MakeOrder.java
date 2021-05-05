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
		
		//������Ҫ��ת��checkout���棬������ת����ȥ����Ϊʹ����ajax
	}
	
	/*
	 * ��ת���û���Ǯ��ҳ��
	 * �û���֧��
	 * �û��������ʷ�����б�
	 * �û�����ɶ�������
	 * �û����ﳵ����Ʒ����
	 * �û����ﳵ��Ʒ�б�
	 * �ٶ����ﳵ�������Ϊ120������ʣ������
	 */
	private void toMyWallet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//��ȡ���������û�id
		int userid = Integer.parseInt(request.getParameter("UserId"));
		//��ȡ����ɶ����б�
		OrderServImpl orderserv = (OrderServImpl) DAOFactory.newInstance("IOrderServ");
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		request.setAttribute("orderlist", orderlist);
		logger.debug(orderlist);
		
		//��ȡ���ﳵ��Ʒ�б�
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
