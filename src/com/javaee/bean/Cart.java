package com.javaee.bean;

import java.util.ArrayList;

public class Cart {


	private int UserId;//�û�id
	private int DishNum;//���ﳵ�ڲ�Ʒ����
	private float SumPrice;//���ﳵ�ڲ�Ʒ�ܼ۸�
	private int CartType;//���ﳵ���ͣ�0��δ�ύ��1���ύ
	
	ArrayList<CartItem> ItemList;
	
	public int getUserId() {
		return UserId;
	}
	public ArrayList<CartItem> getItemList() {
		return ItemList;
	}
	public void setItemList(ArrayList<CartItem> itemList) {
		ItemList = itemList;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getDishNum() {
		return DishNum;
	}
	public void setDishNum(int dishNum) {
		DishNum = dishNum;
	}
	public float getSumPrice() {
		return SumPrice;
	}
	public void setSumPrice(float sumPrice) {
		SumPrice = sumPrice;
	}
	public int getCartType() {
		return CartType;
	}
	public void setCartType(int cartType) {
		CartType = cartType;
	}

	
}
