package com.javaee.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaee.bean.Dish;
import com.javaee.bean.User;
import com.javaee.biz.CartServImpl;
import com.javaee.biz.DishServImpl;
import com.javaee.biz.UserServImpl;
import com.javaee.util.DAOFactory;

import java.sql.*;

@WebServlet("/ajax1")
public class AjaxServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        this.doPost(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
    	
        String action = req.getParameter("action");
        if(action==null||action.length()<0)
        {
            req.getRequestDispatcher("/Ajax1.jsp").forward(req, resp);
        }
        else if(action.equals("update"))
        {
            int i = Integer.parseInt(req.getParameter("i"));
            String userid=req.getParameter("Userid");
            String dishid=req.getParameter("DishId");
            DishServImpl dishserv = (DishServImpl) DAOFactory.newInstance("IDishServ");
    		UserServImpl userserv = (UserServImpl) DAOFactory.newInstance("IUserServ");
    		//User user=userserv.maketoUser(userid);
    		Dish dish=dishserv.findDishDetails(Integer.parseInt(dishid));
           // int j = Integer.parseInt(req.getParameter("j"));
            CartServImpl cartserv = (CartServImpl) DAOFactory.newInstance("ICartServ");
           // cartserv.addDish(user, dish, i);
            
            
            resp.setContentType("text/html");
            resp.getWriter().print(i);
            System.out.println("数据已获取");
        }
    }
}
