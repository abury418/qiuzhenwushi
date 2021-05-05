package com.javaee.bean;

public class Dish {

	private int DishId;
	private int DiningId;//所属餐厅
	private String DishName;
	private String DishPic;
	private float DishPrice;
	private int DishSale;//销量
	private float DishMarks;
	private int DishStock;//库存
	private String DishDetails;
	
	private float VipDiscount;//会员折扣
	
	
	public float getDishMarks() {
		return DishMarks;
	}
	public String getDishIdS() {
		return Integer.toString(DishId);
	}
	public void setDishMarks(float dishMarks) {
		DishMarks = dishMarks;
	}
	public void setDishSale(int dishSale) {
		DishSale = dishSale;
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
	public String getDishPic() {
		return DishPic;
	}
	public void setDishPic(String dishPic) {
		DishPic = dishPic;
	}
	public float getDishPrice() {
		return DishPrice;
	}
	public void setDishPrice(float dishPrice) {
		DishPrice = dishPrice;
	}
	public int getDishSale() {
		return DishSale;
	}
	public void setDishsale(int dishsale) {
		DishSale = dishsale;
	}
	public int getDishStock() {
		return DishStock;
	}
	public void setDishStock(int dishStock) {
		DishStock = dishStock;
	}
	public String getDishDetails() {
		return DishDetails;
	}
	public void setDishDetails(String dishDetails) {
		DishDetails = dishDetails;
	}
	public int getDiningId() {
		return DiningId;
	}
	public void setDiningId(int diningId) {
		DiningId = diningId;
	}
	public float getVipDiscount() {
		return VipDiscount;
	}
	public void setVipDiscount(float vipDiscount) {
		VipDiscount = vipDiscount;
	}
	@Override
	public String toString() {
		return "Dish [DishId=" + DishId + ", DiningId=" + DiningId + ", DishName=" + DishName + ", DishPic=" + DishPic
				+ ", DishPrice=" + DishPrice + ", DishSale=" + DishSale + ", DishMarks=" + DishMarks + ", DishStock="
				+ DishStock + ", DishDetails=" + DishDetails + ", VipDiscount=" + VipDiscount + "]";
	}
	
	

}
