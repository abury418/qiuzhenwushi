package com.javaee.biz;

import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Dining;
import com.javaee.bean.Order;
import com.javaee.dao.IDishDAO;
import com.javaee.dao.IOrderDAO;
import com.javaee.util.DAOFactory;

public class OrderServImpl  implements IOrderServ{
	@Override
	public String makeOrder(ArrayList<CartItem> arr) {
		//for(int i=0;i<arr.size();i++) {
			IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
			return orderdao.toOrder(arr);
	//	}
	}
	@Override
	public int addAdd(String orderid,String name,String phone,String add) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		return orderdao.addAdd(orderid, name, phone, add);
	}
	@Override
	public ArrayList findFinishOrders(int userid) {
		ArrayList orders=new ArrayList();
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		orders=orderdao.findOrders(userid);
		return orders;
	}
	@Override
	public ArrayList findAllOrders(int userid) {
		ArrayList orders=new ArrayList();
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		orders=orderdao.findAllOrders(userid);
		return orders;
	}
	@Override
	public ArrayList findNotFinishOrders(int userid) {
		ArrayList orders=new ArrayList();
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		orders=orderdao.findNotOrders(userid);
		return orders;
	}
	
	@Override
	public int getTotalRecords() {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		return orderdao.getTotalOrderRecords();
	}
	@Override
	public boolean validateOrder(Order order) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		if(orderdao.findOrders(order.getUserId()).size()>0) {
			return true;
		}
		return false;
	}
	@Override
	public void updateToSureStatus(Order order) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		orderdao.updateOrder(order);
	}
	@Override
	public void updateToCancleStatus(Order order) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		orderdao.updateCancleOrder(order);
	}
	@Override
	public Order findOrderDetails(String orderid) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		return orderdao.findOrderDetails(orderid);
	}
	@Override
	public int getTotalUserRecords(int userid) {
		IOrderDAO orderdao = (IOrderDAO) DAOFactory.newInstance("IOrderDAO");
		return orderdao.getTotalUserOrderRecords(userid);
	}

}
