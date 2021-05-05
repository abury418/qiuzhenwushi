package com.javaee.dao;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Order;

public interface IOrderDAO {
	String toOrder(ArrayList<CartItem> arr);
	
	int addAdd(String orderid,String name,String phone,String add);
	public ArrayList<Order> findOrdersBy(String sql, Object[] params);
	public int getTotalOrderRecords();
	public int getTotalUserOrderRecords(int userid);
	ArrayList findAllOrders(int userid);
	ArrayList findOrders(int userid);
	ArrayList findNotOrders(int userid);
	int updateOrder(Order order);
	int updateCancleOrder(Order order);
	Order findOrderDetails(String orderid);
}
