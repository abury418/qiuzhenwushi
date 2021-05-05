package com.javaee.dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import com.javaee.bean.CartItem;
import com.javaee.bean.Order;
import com.javaee.util.DAOFactory;

public class OrderDAOImplMysql extends BaseDAO implements IOrderDAO {
	/*@Override
	public int insertDish(Dish dish) {
		String sql = "insert into dish(DishName,DishPic,DishPrice,DishSale,DishMarks,DishStock,DishDetails,DiningId,VipDiscount) values(?,?,?,?,?,?,?,?,?)";
		Object[] params= {dish.getDishName(),dish.getDishPic(),dish.getDishPrice(),dish.getDishSale(),dish.getDishMarks(),dish.getDishStock(),dish.getDishDetails(),dish.getDiningId(),dish.getVipDiscount()};
		return this.modifyObj(sql, params);
	}*/
	
	//����һ������
	@Override 
	public String toOrder(ArrayList<CartItem> arr) {
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
		
		ICartItemDAO cartitemdao = (ICartItemDAO) DAOFactory.newInstance("ICartItemDAO");
		for(int i=0;i<arr.size();i++) {
			CartItem now=arr.get(i);
			cartitemdao.deleteCartItem(Integer.toString(arr.get(0).getUserId()),Integer.toString(arr.get(i).getDishId()));
			String sql = "insert into orderlist (UserId,OrderId,DishId,DishName,DishNum,SumPrice,DishPic,OrderTime,DiningId) values(?,?,?,?,?,?,?,?,?)";
			
			Object[] params= {now.getUserId(),orid,now.getDishId(),now.getDishName(),now.getDishNum(),now.getSumPrice(),now.getDishPic(),now.getOrderTime(),dinid};
			this.modifyObj(sql, params);
		
		}
		
		
		return orid.toString();
	}
	
	//��ĳ���������û������绰����ַ���ͻ���Ϣ
	@Override 
	public int addAdd(String orderid,String name,String phone,String add) {
		String sql = "update orderlist set UserName=?,PhoneNumber=?,Address=? where OrderId=?";
		
		Object[] params= {name,phone,add,orderid};
		return this.modifyObj(sql, params);

	}
	
	//���ж����б�
	@Override
	public ArrayList<Order> findOrdersBy(String sql, Object[] params) {
		return this.findObjs(sql, params, Order.class);
	}
	
	//��������
	@Override
	public int getTotalOrderRecords() {
		String strsql="select count(*) from orderlist";
		return getTotalRecords(strsql);
	}

	//ĳ�û������ж����б�
	@Override
	public ArrayList findAllOrders(int userid) {
		String sql = "select * from orderlist where UserId=?";
		Object[] params = {userid};
		return this.findObjs(sql, params, Order.class);
	}
	/*
	 * ��ѯĳ�û�����ɵĶ���
	 * @see com.javaee.dao.IOrderDAO#findOrders(int)
	 */
	@Override
	public ArrayList findOrders(int userid) {
		String sql = "select * from orderlist where UserId=? and Status=1";
		Object[] params = {userid};
		return this.findObjs(sql, params, Order.class);
	}

	/*
	 * ��ѯĳ�û�δ��ɵĶ���
	 * @see com.javaee.dao.IOrderDAO#findNotOrders(int)
	 */
	@Override
	public ArrayList findNotOrders(int userid) {
		String sql = "select * from orderlist where UserId=? and Status=0";
		Object[] params = {userid};
		return this.findObjs(sql, params, Order.class);
	}

	//��ĳ������״̬�޸�Ϊ�����
	@Override
	public int updateOrder(Order order) {
		String sql = "update orderlist set Status=1 where OrderId=?";
		Object[] params = {order.getOrderId()};
		return this.modifyObj(sql, params);
	}

	//ɾ��ĳ����
	@Override
	public int updateCancleOrder(Order order) {
		String sql = "delete from orderlist where OrderId=?";
		Object[] params = {order.getOrderId()};
		return this.modifyObj(sql, params);
	}
	
	//��ѯĳ��������ϸ��Ϣ
	@Override
	public Order findOrderDetails(String orderid) {
		String sql = "select * from orderlist where OrderId=?";
		Object[] params = {orderid};
		return (Order)this.findObjs(sql, params, Order.class).get(0);
	}

	//��ѯĳ�û����ж�������
	@Override
	public int getTotalUserOrderRecords(int userid) {
		String strsql="select count(*) from orderlist where UserId=?";
		return getTotalRecords(strsql);
	}

}
