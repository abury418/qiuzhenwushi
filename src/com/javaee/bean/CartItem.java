package com.javaee.bean;

public class CartItem {


	private int UserId;//�û�id
	private int DishId;//��Ʒid
	private String DishName;//��Ʒ����
	private int DishNum;//��Ʒ����
	private String DishPic;//��ƷͼƬ��
	private float SumPrice;//��Ʒ�۸�
	private String DishDetails;//��Ʒ����
	private String OrderTime;//Ԥ��ʱ��

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
