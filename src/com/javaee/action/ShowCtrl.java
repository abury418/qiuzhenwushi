package com.javaee.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.Dining;
import com.javaee.bean.Dish;
import com.javaee.bean.Menu;
import com.javaee.bean.PageModel;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.IDishServ;
import com.javaee.biz.IMenuServ;
import com.javaee.biz.MenuServImpl;
import com.javaee.util.DAOFactory;

@WebServlet("/showctrl")
public class ShowCtrl extends baseControl {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		//获取传过来的餐厅id
		String diningid = req.getParameter("DiningId");
		IMenuServ menuserv = new MenuServImpl();
		IDishServ dishserv = new DishServImpl();
		ArrayList<Map<Dish,Integer>> dishlist = new ArrayList<Map<Dish,Integer>>();
		ArrayList<Menu> menulist = menuserv.fetchAllMenusByDiningId(diningid);
		req.getRequestDispatcher("dishs.jsp").forward(req, resp);
		if(menulist!=null) {
			for(Menu m:menulist) {
				Map<Dish,Integer> map=new IdentityHashMap<Dish,Integer>();
				map=dishserv.fetchAlldishsByMenuId(m.getMenuId());
				dishlist.add(map);
			}
			req.setAttribute("dishlist", dishserv);
			req.setAttribute("menulist", menulist);
			req.getRequestDispatcher("dishs.jsp").forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	

}
