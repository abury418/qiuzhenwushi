package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dining;
import com.javaee.bean.Order;

public interface IOrderServ {
	public String makeOrder(ArrayList<CartItem> arr);
	public int addAdd(String orderid,String name,String phone,String add);
	ArrayList findAllOrders(int userid);
	ArrayList findFinishOrders(int userid);
	ArrayList findNotFinishOrders(int userid);
	public int getTotalRecords();
	public int getTotalUserRecords(int userid);
	boolean validateOrder(Order order);
	public void updateToSureStatus(Order order);
	public void updateToCancleStatus(Order order);
	public Order findOrderDetails(String orderid); 
}
