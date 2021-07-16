package com.shopCatering;

public class ModelClass {
	
	private String mid;
	private String brand;
	private String category;
	private double unitPrice;
	private String warrenty;
	private int quantity;
	private int minimumLimit;
	public ModelClass(String mid, String brand, String category, double unitPrice, String warrenty, int quantity,
			int minimumLimit) {
		super();
		this.mid = mid;
		this.brand = brand;
		this.category = category;
		this.unitPrice = unitPrice;
		this.warrenty = warrenty;
		this.quantity = quantity;
		this.minimumLimit = minimumLimit;
	}
	public String getMid() {
		return mid;
	}
	public String getBrand() {
		return brand;
	}
	public String getCategory() {
		return category;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public String getWarrenty() {
		return warrenty;
	}
	public int getQuantity() {
		return quantity;
	}
	public int getMinimumLimit() {
		return minimumLimit;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public void setWarrenty(String warrenty) {
		this.warrenty = warrenty;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setMinimumLimit(int minimumLimit) {
		this.minimumLimit = minimumLimit;
	}
	
	

}
