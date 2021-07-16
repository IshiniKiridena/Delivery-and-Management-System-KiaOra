package com.shopCatering;

public class ShopClass {
	
	private String id;
	private String shopname;
	private String ownername;
	private String addressLine1;
	private String addressStreet;
	private String addressCity;
	private String email;
	private int phone;
	private String registeredDate;
	private int routeid;
	
	public ShopClass (String id, String shopname, String ownername, String addressLine1, String addressStreet,
			String addressCity, String email, int phone, String registeredDate, int routeid) {
		super();
		this.id = id;
		this.shopname = shopname;
		this.ownername = ownername;
		this.addressLine1 = addressLine1;
		this.addressStreet = addressStreet;
		this.addressCity = addressCity;
		this.email = email;
		this.phone = phone;
		this.registeredDate = registeredDate;
		this.routeid = routeid;
	}

	public String getId() {
		return id;
	}

	public String getShopname() {
		return shopname;
	}

	public String getOwnername() {
		return ownername;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public String getAddressStreet() {
		return addressStreet;
	}

	public String getAddressCity() {
		return addressCity;
	}

	public String getEmail() {
		return email;
	}

	public int getPhone() {
		return phone;
	}

	public String getRegisteredDate() {
		return registeredDate;
	}

	public int getRouteid() {
		return routeid;
	}

	
	
	

}
