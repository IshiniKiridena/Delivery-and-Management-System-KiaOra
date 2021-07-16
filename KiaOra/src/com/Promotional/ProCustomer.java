package com.Promotional;

public class ProCustomer {

	private int cusID;
	private String name;
	private String NIC;
	private String AddressLine;
	private String street;
	private String city;
	private int phoneNo;
	private String companyName;
	private String companyAddress;
	
	
	public ProCustomer(int cusID, String name, String NIC, String AddressLine, String street, String city, int phoneNo,String companyName, String companyAddress) {
	
		this.cusID = cusID;
		this.name = name;
		this.NIC = NIC;
		this.AddressLine = AddressLine;
		this.street = street;
		this.city = city;
		this.phoneNo = phoneNo;
		this.companyName = companyName;
		this.companyAddress = companyAddress;
		
		 System.out.println(AddressLine);
	}
	
	


	public int getCusID() {
		return cusID;
	}


	public String getName() {
		return name;
	}


	public String getNIC() {
		return NIC;
	}


	public String getAddressLine() {
		
		return AddressLine;
	}


	public String getStreet() {
		return street;
	}


	public String getCity() {
		return city;
	}


	public int getPhoneNo() {
		return phoneNo;
	}


	public String getCompanyName() {
		return companyName;
	}


	public String getCompanyAddress() {
		return companyAddress;
	}


}
