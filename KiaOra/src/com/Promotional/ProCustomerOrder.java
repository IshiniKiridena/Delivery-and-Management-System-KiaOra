package com.Promotional;

public class ProCustomerOrder {

	private int orderID;
	private String dueDate;
	private float discount;
	private double amountPaid;
	private double totPayment;
	private double unitPrice;
	private int quantity;
	private String oDate;
	private String updatedDate;
	private String paymentStatus;
	private int cusID;
	private String modelID;
	private double remainingAmount;
	
	
	public ProCustomerOrder(int orderID, String dueDate, float discount, double amountPaid, double totPayment,
			double unitPrice, int quantity, String oDate, String updatedDate,String paymentStatus, int cusID, String modelID,double remainingAmount) {
		
		this.orderID = orderID;
		this.dueDate = dueDate;
		this.discount = discount;
		this.amountPaid = amountPaid;
		this.totPayment = totPayment;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.oDate = oDate;
		this.updatedDate = updatedDate;
		this.paymentStatus = paymentStatus;
		this.cusID = cusID;
		this.modelID = modelID;
		this.remainingAmount = remainingAmount;
	}


	public int getOrderID() {
		return orderID;
	}


	public String getDueDate() {
		return dueDate;
	}


	public float getDiscount() {
		return discount;
	}


	public double getAmountPaid() {
		return amountPaid;
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


	public String getUpdatedDate() {
		return updatedDate;
	}


	public String getPaymentStatus() {
		return paymentStatus;
	}



	public int getCusID() {
		return cusID;
	}


	public String getModelID() {
		return modelID;
	}


	public double getRemainingAmount() {
		return remainingAmount;
	}

 
}
