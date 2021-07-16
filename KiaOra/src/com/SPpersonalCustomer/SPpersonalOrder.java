package com.SPpersonalCustomer;

public class SPpersonalOrder {
	private int orderID;
	private String dueDate;
	private double  discount;
	private double amountPaid;
	private int creditPeriod;
	private double totPayment;
	private double unitPrice;
	private int quantity;
	private String oDate;
	private int shopID;
	private String modelID;
	private String status;
	private int cusID;
	
	public SPpersonalOrder(int orderID, String dueDate, double discount, double amountPaid, int creditPeriod,
			double totPayment, double unitPrice, int quantity, String oDate, int shopID, String modelID, String status,
			int cusID) {
		super();
		this.orderID = orderID;
		this.dueDate = dueDate;
		this.discount = discount;
		this.amountPaid = amountPaid;
		this.creditPeriod = creditPeriod;
		this.totPayment = totPayment;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.oDate = oDate;
		this.shopID = shopID;
		this.modelID = modelID;
		this.status = status;
		this.cusID = cusID;
	}

	public SPpersonalOrder(int id) {
		// TODO Auto-generated constructor stub
	}

	public int getOrderID() {
		return orderID;
	}

	public String getDueDate() {
		return dueDate;
	}

	public double getDiscount() {
		return discount;
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

	public double getUnitPrice() {
		return unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public String getoDate() {
		return oDate;
	}

	public int getShopID() {
		return shopID;
	}

	public String getModelID() {
		return modelID;
	}

	public String getStatus() {
		return status;
	}

	public int getCusID() {
		return cusID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public void setAmountPaid(double amountPaid) {
		this.amountPaid = amountPaid;
	}

	public void setCreditPeriod(int creditPeriod) {
		this.creditPeriod = creditPeriod;
	}

	public void setTotPayment(double totPayment) {
		this.totPayment = totPayment;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setoDate(String oDate) {
		this.oDate = oDate;
	}

	public void setShopID(int shopID) {
		this.shopID = shopID;
	}

	public void setModelID(String modelID) {
		this.modelID = modelID;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCusID(int cusID) {
		this.cusID = cusID;
	}
	
	
	
	
	
	
	
	

}
