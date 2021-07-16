package com.shopCatering;

public class MinMaxShop {
	
	private String ShopID;
	private String ShopName;
	private double amount;
	
	public MinMaxShop(String shopID, String shopName, double amount) {
		super();
		ShopID = shopID;
		ShopName = shopName;
		this.amount = amount;
	}

	public String getShopID() {
		return ShopID;
	}

	public String getShopName() {
		return ShopName;
	}

	public double getAmount() {
		return amount;
	}

	public void setShopID(String shopID) {
		ShopID = shopID;
	}

	public void setShopName(String shopName) {
		ShopName = shopName;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	

}
