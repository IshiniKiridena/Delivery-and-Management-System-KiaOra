package com.SPpersonalCustomer;

public class PersonalOrder {
	private int orderID;
	private String dueDate;
	private double discount;
	private double amountPaid;
	private int creditPeriod;
	private double totPayment;
	private double unitPrice;
	private String status;
	private int quantity;
	private String orderDate;
	private String updateDate;
	private int cusID;
	private int shopID;
	private String modelID;
	
	public PersonalOrder(int orderID, String dueDate, /*double discount*/ double amountPaid, int creditPeriod,
			/*double totPayment*/ double unitPrice, String status, /*int quantity,*/ String orderDate, /*String updateDate,*/
			int cusID /*int shopID String modelID*/) {
		super();
		this.orderID = orderID;
		this.dueDate = dueDate;
		//this.discount = discount;
		this.amountPaid = amountPaid;
		this.creditPeriod = creditPeriod;
		//this.totPayment = totPayment;
		this.unitPrice = unitPrice;
		this.status = status;
		//this.quantity = quantity;
		this.orderDate = orderDate;
		//this.updateDate = updateDate;
		this.cusID = cusID;
		//this.shopID = shopID;
		//this.modelID = modelID;
	}

	public PersonalOrder(int oid) {
		// TODO Auto-generated constructor stub
	}

	public PersonalOrder(int oid, String duedate2, double amountPaid2, int period, double tot, double unitPrice2,
			String status2, String orderDate2, int cusId2) {
		// TODO Auto-generated constructor stub
	}

	public PersonalOrder(int orderID2, String dueDate2, double discount2, double amountPaid2, double totPayment2,
			double unitPrice2, int quantity2, String oDate, String updatedDate, String paymentStatus, int cusID2,
			String modelID2) {
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

	public String getStatus() {
		return status;
	}

	public int getQuantity() {
		return quantity;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public int getCusID() {
		return cusID;
	}

	public int getShopID() {
		return shopID;
	}

	public String getModelID() {
		return modelID;
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

	public void setStatus(String status) {
		this.status = status;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public void setCusID(int cusID) {
		this.cusID = cusID;
	}

	public void setShopID(int shopID) {
		this.shopID = shopID;
	}

	public void setModelID(String modelID) {
		this.modelID = modelID;
	}
	
	
	

}
