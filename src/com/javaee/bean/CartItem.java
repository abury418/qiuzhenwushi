package com.javaee.bean;

public class CartItem {


	private int UserId;//用户id
	private int DishId;//菜品id
	private String DishName;//菜品名称
	private int DishNum;//菜品数量
	private String DishPic;//菜品图片；
	private float SumPrice;//菜品价格
	private String DishDetails;//菜品描述
	private String OrderTime;//预定时间

	public int getDishId() {
		return DishId;
	}
	public String getDishIdS() {
		return Integer.toString(DishId);
	}
	public void setDishId(int dishId) {
		DishId = dishId;
	}
	public int getUserId() {
		return UserId ;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getDishPic() {
		return DishPic;
	}
	public void setDishPic(String dishPic) {
		DishPic = dishPic;
	}
	public String getDishName() {
		return DishName;
	}
	public void setDishName(String dishName) {
		DishName = dishName;
	}
	public float getSumPrice() {
		return SumPrice;
	}
	public void setSumPrice(float sumprice) {
		SumPrice = sumprice;
	}
	public int getDishNum() {
		return DishNum;
	}
	public void setDishNum(int dishNum) {
		DishNum = dishNum;
	}
	public String getDishDetails() {
		return DishDetails;
	}
	public void setDishDetails(String dishDetails) {
		DishDetails = dishDetails;
	}
	public String getOrderTime() {
		return OrderTime;
	}
	public void setOrderTime(String orderTime) {
		OrderTime = orderTime;
	}
	

}
