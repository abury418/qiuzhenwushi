package com.javaee.bean;

public class Dish {

	private int DishId;
	private String DishName;
	private String DishPic;
	private float DishPrice;
	private int DishSale;//销量
	private int DishStock;//库存
	private String DishDetails;
	private String DiningId;//所属餐厅
	private float VipDiscount;//会员折扣
	
	
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
	public String getDiningId() {
		return DiningId;
	}
	public void setDiningId(String diningId) {
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
		return "Dish [DishId=" + DishId + ", DishName=" + DishName + ", DishPic=" + DishPic + ", DishPrice=" + DishPrice
				+ ", DishSale=" + DishSale + ", DishStock=" + DishStock + ", DishDetails=" + DishDetails + ", DiningId="
				+ DiningId + ", VipDiscount=" + VipDiscount + "]";
	}

}
