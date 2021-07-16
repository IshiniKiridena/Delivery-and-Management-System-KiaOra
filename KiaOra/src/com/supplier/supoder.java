package com.supplier;

public class supoder {
private int id;
private String quantity;
private String amount;
private String credit_Period;	
private String supplierID;		
private String date;		
private String modelid;

public supoder(int id, String quantity, String amount, String credit_Period, String supplierID, String date,
		String modelid) {
	super();
	this.id = id;
	this.quantity = quantity;
	this.amount = amount;
	this.credit_Period = credit_Period;
	this.supplierID = supplierID;
	this.date = date;
	this.modelid = modelid;
	
}
public int getId() {
	return id;
}
public String getQuantity() {
	return quantity;
}
public String getCredit_Period() {
	return amount;
}
public String getAmount() {
	return credit_Period;
}
public String getSupplierID() {
	return supplierID;
}
public String getDate() {
	return date;
}
public String getModelid() {
	return modelid;
}



	   
	


}