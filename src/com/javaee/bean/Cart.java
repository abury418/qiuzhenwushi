package com.javaee.bean;

import java.util.ArrayList;

public class Cart {


	private int UserId;//用户id
	private int DishNum;//购物车内菜品数量
	private float SumPrice;//购物车内菜品总价格
	private int CartType;//购物车类型，0是未提交，1是提交
	
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
