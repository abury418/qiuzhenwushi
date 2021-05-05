package com.javaee.bean;

public class Order {
	int UserId;
	String OrderId;
	int DishId;
	String DishName;
	int DishNum;
	float SumPrice;
	String DishPic;
	String OrderTime;
	int DiningId;
	private String UserName;
	private String PhoneNumber;
	private String Address;
	private int Status;
	String DiningName;
	
	public String getDiningName() {
		return DiningName;
	}
	public void setDiningName(String diningName) {
		DiningName = diningName;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getDiningId() {
		return DiningId;
	}
	public void setDiningId(int diningId) {
		DiningId = diningId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getOrderId() {
		return OrderId;
	}
	public void setOrderId(String orderid2) {
		OrderId = orderid2;
	}
	public int getDishId() {
		return DishId;
	}
	public void setDishId(int dishId) {
		DishId = dishId;
	}
	public String getDishName() {
		return DishName;
	}
	public void setDishName(String dishName) {
		DishName = dishName;
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
	public String getDishPic() {
		return DishPic;
	}
	public void setDishPic(String dishPic) {
		DishPic = dishPic;
	}
	public String getOrderTime() {
		return OrderTime;
	}
	public void setOrderTime(String orderTime) {
		OrderTime = orderTime;
	}
	@Override
	public String toString() {
		return "Order [UserId=" + UserId + ", OrderId=" + OrderId + ", DishId=" + DishId + ", DishName=" + DishName
				+ ", DishNum=" + DishNum + ", SumPrice=" + SumPrice + ", DishPic=" + DishPic + ", OrderTime="
				+ OrderTime + ", DiningId=" + DiningId + ", UserName=" + UserName + ", PhoneNumber=" + PhoneNumber
				+ ", Address=" + Address + ", Status=" + Status + ", DiningName=" + DiningName + "]";
	}
	
	
}
