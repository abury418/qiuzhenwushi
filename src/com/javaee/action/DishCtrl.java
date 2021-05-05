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
import com.javaee.bean.Dish;
import com.javaee.bean.PageModel;
import com.javaee.bean.User;
import com.javaee.biz.CartItemServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IDiningServ;
import com.javaee.biz.UserServImpl;
import com.javaee.util.DAOFactory;

@WebServlet("/dishctrl")
public class DishCtrl extends baseControl {

	/*
	 * ���빺�ﳵ
	 */
	private void addToCartCtrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid =Integer.parseInt(request.getParameter("userid_op"));
		int dishid =Integer.parseInt( request.getParameter("dishid_op"));
		int dishnum = Integer.parseInt(request.getParameter("disnum_op"));
		// �û������֤
		CartItem item = new CartItem();
		item.setUserId(userid);
		item.setDishId(dishid);
		item.setDishNum(dishnum);
		
		CartItemServImpl cartitemserve = (CartItemServImpl) DAOFactory.newInstance("ICartItemDAO");
		RequestDispatcher rd = request.getRequestDispatcher("mycart.jsp");
		
		if (cartitemserve.validateCartItem(item)==false) {// �²�Ʒ
			request.setAttribute("newitem", item);
			request.getSession().setAttribute("newitem", item);
			// ��ת��index.jspҳ��
			rd.forward(request, response);
		} else {// ��֤ʧ�ܣ��ı���Ʒ����
			
			//�ı���Ʒ��Ŀ============================================================================================================================================================

		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		switch (action) {
		case "addctrl":
			addToCartCtrl(request, response);break;	
		/*case "toMycart":
			toMycart(request, response);break;		
		case "pagelist":
			PageList(request, response);break;	*/
		}
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
