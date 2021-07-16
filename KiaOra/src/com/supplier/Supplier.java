 package com.supplier;

 public class Supplier {
 private int id;
 private String companyName;
 private String phone;
 private String address;

 
 
 
public Supplier(int id, String companyName, String phone, String address) {
	super();
	this.id = id;
	this.companyName = companyName;
	this.phone = phone;
	this.address = address;
}
public int getId() {
	return id;
}

public String getCompanyName() {
	return companyName;
}

public String getPhone() {
	return phone;
}


public String getAddress() {
	return address;
}


 
 }
