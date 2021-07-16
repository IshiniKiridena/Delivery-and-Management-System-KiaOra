package com.shopCatering;

public class OrderClass {

	private int orderID;
	private String dueDate;
	private double amountPaid;
	private int creditPeriod;
	private double totPayment;
	private double remainingCost;
	private double unitPrice;
	private String status;
	private int quantity;
	private String orderDate;
	private String updatedDate;
	private String shopID;
	private String modelID;
	
	public OrderClass(int orderID, String dueDate, double amountPaid, int creditPeriod, double totPayment,double remainingCost, double unitPrice,
			String status, int quantity, String orderDate, String updatedDate, String shopID, String modelID) {
		super();
		this.orderID = orderID;
		this.dueDate = dueDate;
		this.amountPaid = amountPaid;
		this.creditPeriod = creditPeriod;
		this.totPayment = totPayment;
		this.remainingCost = remainingCost;
		this.unitPrice = unitPrice;
		this.status = status;
		this.quantity = quantity;
		this.orderDate = orderDate;
		this.updatedDate = updatedDate;
		this.shopID = shopID;
		this.modelID = modelID;
	}

	public int getOrderID() {
		return orderID;
	}

	public String getDueDate() {
		return dueDate;
	}

	public double getAmountPaid() {
		return amountPaid;
	}

	public int getCreditPeriod() {
		return creditPeriod;
	}

	public double getTotPayment() {
		return totPayment;
	}

	public double getRemainingCost() {
		return remainingCost;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public String getStatus() {
		return status;
	}

	public int getQuantity() {
		return quantity;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public String getShopID() {
		return shopID;
	}

	public String getModelID() {
		return modelID;
	}


	public void setRemainingCost(double remainingCost) {
		this.remainingCost = remainingCost;
	}

	

	

	
}
