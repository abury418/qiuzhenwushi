package com.javaee.bean;

public class Menu {

	private String MenuId;
	private String MenuName;
	private int MenuType;//菜单类型（0：未上架；1：已上架）
	private String DiningId;
	
	public String getMenuId() {
		return MenuId;
	}
	public void setMenuId(String menuId) {
		MenuId = menuId;
	}
	public String getMenuName() {
		return MenuName;
	}
	public void setMenuName(String menuName) {
		MenuName = menuName;
	}
	public int getMenuType() {
		return MenuType;
	}
	public void setMenuType(int menuType) {
		MenuType = menuType;
	}
	public String getDiningId() {
		return DiningId;
	}
	public void setDiningId(String diningId) {
		DiningId = diningId;
	}
	

}
