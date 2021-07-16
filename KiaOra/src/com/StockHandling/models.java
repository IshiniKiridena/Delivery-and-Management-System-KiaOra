package com.StockHandling;
//denta one ne
public class models {

	private String modelID;
	private String brand;
	private String category;
	private double unitprice;
	private String warranty;
	private int quantity;
	private int minimumlimit;
	
	public models(String modelID, String brand, String category, double unitprice, String warranty, int quantity,
			int minimumlimit) {
		super();
		this.modelID = modelID;
		this.brand = brand;
		this.category = category;
		this.unitprice = unitprice;
		this.warranty = warranty;
		this.quantity = quantity;
		this.minimumlimit = minimumlimit;
	}

	public String getModelID() {
		return modelID;
	}

	public void setModelID(String modelID) {
		this.modelID = modelID;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}

	public String getWarranty() {
		return warranty;
	}

	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getMinimumlimit() {
		return minimumlimit;
	}

	public void setMinimumlimit(int minimumlimit) {
		this.minimumlimit = minimumlimit;
	}
	
	
}
