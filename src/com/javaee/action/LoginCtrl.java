package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.javaee.bean.Cart;
import com.javaee.bean.CartItem;
import com.javaee.bean.Dining;
import com.javaee.bean.Order;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.bean.UserInfo;
import com.javaee.biz.ICartItemServ;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.IOrderServ;
import com.javaee.biz.IUserServ;
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
		
		user=userserv.maketoUser(username, password);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/index_1.jsp");
		
		if (userserv.validateUser(user)) {// ��֤ͨ��
			request.getSession().setAttribute("user", user);
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
		RequestDispatcher rd = request.getRequestDispatcher("index_1.jsp");
		
		if (userserv.validateMail(user)==null) {// ����δ��ע���
			request.setAttribute("registeruser", user);
			request.getSession().setAttribute("user", user);
			// ��ת��index.jspҳ��
			rd.forward(request, response);
		} else {// ��֤ʧ��
			System.out.println("�����Ѵ��ڣ�");
			//JOptionPane.showMessageDialog(null, "�����ѱ�ע�����", "ע��ʧ��", JOptionPane.WARNING_MESSAGE);
			//request.setAttribute("", "�����Ѵ��ڣ�");
			response.sendRedirect("login.jsp");
		}
	}
	
	/*
	 * ҳ�����
	 */
	private void PageList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("PageNo"));
		IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dininglist = diningserv.findDining4PageList(pageNo,5);
		request.setAttribute("dininglist", dininglist);
		logger.debug(dininglist);
		int totalRecords = diningserv.getTotalRecords();
		PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,pageNo,5,dininglist);
		request.setAttribute("pageModel", pageModel);
		// ��ת��show.jspҳ��
		RequestDispatcher rd = request.getRequestDispatcher("/dinings.jsp");
		rd.forward(request, response);
	}
	/*
	 * ��ת��mycartҳ��
	 */
	private void tomycart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid=Integer.parseInt(request.getParameter("UserId"));
		ICartItemServ itemserv = (ICartItemServ) DAOFactory.newInstance("ICartItemServ");
		ArrayList<Dining> itemlist = itemserv.findAllCartItem(userid);
		request.setAttribute("itemlist", itemlist);
		logger.debug(itemlist);

		RequestDispatcher rd = request.getRequestDispatcher("/mycart.jsp");
		rd.forward(request, response);
	}
	/*
	 * ��ת��diningҳ��
	 */
	private void todinings(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IDiningServ diningserv = (IDiningServ) DAOFactory.newInstance("IDiningServ");
		ArrayList<Dining> dininglist = diningserv.findDining4PageList(1, 5);
		request.setAttribute("dininglist", dininglist);
		System.out.println(dininglist.size());
		logger.debug(dininglist);
		int totalRecords = diningserv.getTotalRecords();
		PageModel<Dining> pageModel = new PageModel<Dining>(totalRecords,1,5,dininglist);
		request.setAttribute("pageModel", pageModel);
		
		RequestDispatcher rd = request.getRequestDispatcher("/dinings.jsp");
		rd.forward(request, response);
	}
	/*
	 * ��δ��ɶ���ȷ�����
	 */
	private void sureOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid=Integer.parseInt(request.getParameter("UserId"));
		String orderid=request.getParameter("OrderId");
		Order order=new Order();
		order.setOrderId(orderid);
		IOrderServ orderserv=(IOrderServ) DAOFactory.newInstance("IOrderServ");
		orderserv.updateToSureStatus(order);
		RequestDispatcher rd = request.getRequestDispatcher("/myOrders.jsp");
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("finishorders", orderlist);
		request.setAttribute("notfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		rd.forward(request, response);
	}
	
	/*
	 * ��δ��ɶ���ȡ��(ɾ��)
	 */
	private void cancleOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid=Integer.parseInt(request.getParameter("UserId"));
		String orderid=request.getParameter("OrderId");
		Order order=new Order();
		order.setOrderId(orderid);
		IOrderServ orderserv=(IOrderServ) DAOFactory.newInstance("IOrderServ");
		orderserv.updateToCancleStatus(order);		
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("finishorders", orderlist);
		request.setAttribute("notfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		RequestDispatcher rd = request.getRequestDispatcher("/myOrders.jsp");
		rd.forward(request, response);
	}
	/*
	 * �ڸ��˿ռ��޸ĸ�����Ϣ
	 */
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		
	    User user = (User)request.getSession().getAttribute("user");
	   // UserInfo userinfo = (UserInfo)request.getSession().getAttribute("userinfo");
		int userid = user.getUserId();
		//��ȡ���º�������Ϣ
		String username = request.getParameter("userName");
		String userphone = request.getParameter("userPhone");
		String usermail = request.getParameter("userMail");
		String userbrief = request.getParameter("userBrief");
		user.setUserName(username);
		user.setUserPhone(userphone);
		user.setUserMail(usermail);
		user.setUserBrief(userbrief);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.updateUser(user);
		request.getSession().setAttribute("user", user);
		logger.debug(user);
		RequestDispatcher rd = request.getRequestDispatcher("my_profile.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * �ڸ��˿ռ��޸��˺�����
	 */
	private void updateUserPwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
		//��ȡ��ǰ�����ĵĹ���Ա
	    User user = (User)request.getSession().getAttribute("user");
		int userid = user.getUserId();
		//��ȡ���º�������Ϣ
		String userpwd = request.getParameter("userNewPwd");
		user.setUserPassword(userpwd);
		IUserServ userserv = (IUserServ) DAOFactory.newInstance("IUserServ");
		userserv.updateUserPwd(user);
		request.getSession().setAttribute("user", user);
		logger.debug(user);
		RequestDispatcher rd = request.getRequestDispatcher("my_profile.jsp");
		rd.forward(request, response);
	}
	
	/*
	 * ��ת���ҵĶ���ҳ��
	 */
	private void showOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid=Integer.parseInt(request.getParameter("UserId"));
		IOrderServ orderserv=(IOrderServ) DAOFactory.newInstance("IOrderServ");
		RequestDispatcher rd = request.getRequestDispatcher("/myOrders.jsp");
		ArrayList<Order> orderlist=orderserv.findFinishOrders(userid);
		ArrayList<Order> notorderlist=orderserv.findNotFinishOrders(userid);
		request.setAttribute("finishorders", orderlist);
		request.setAttribute("notfinishorders", notorderlist);
		logger.debug(orderlist);
		logger.debug(notorderlist);
		rd.forward(request, response);
	}


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		switch (action) {
		case "loginctrl":
			loginCtrl(request, response);break;	
		case "registerctrl":
			registerCtrl(request, response);break;		
		case "pagelist":
			PageList(request, response);break;	
		case "tomycart":
			tomycart(request, response);break;	
		case "todinings":
			todinings(request, response);break;	
		case "updateuser":
			updateUser(request, response);break;
		case "updateuserpwd":
			updateUserPwd(request, response);break;	
		case "showorders":
			showOrders(request, response);break;
		case "sureorders":
			sureOrders(request, response);break;
		case "cancleorders":
			cancleOrders(request, response);break;
		

		}
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
