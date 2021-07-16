package com.SPpersonalCustomer;

public class SPdeliveryCustomer {
	private int cusId;
	private String name;
	private String nic;
	private String addressLine;
	private String street;
	private String city;
	private int  phoneNo;
	private String companyName;
	private String companyAddress;
	private int Route_ID;
	
	
	

	public SPdeliveryCustomer(int cusId, String name, String nic, String addressLine, String street, String city,
			int phoneNo) { //String companyName, String companyAddress, int route_ID*/ 
		super();
		this.cusId = cusId;
		this.name = name;
		this.nic = nic;
		this.addressLine = addressLine;
		this.street = street;
		this.city = city;
		this.phoneNo = phoneNo;
//		this.companyName = companyName;
//		this.companyAddress = companyAddress;
//		this.Route_ID = route_ID;
	}

	

	public SPdeliveryCustomer(int id, String name2) {
		// TODO Auto-generated constructor stub
	}

	public SPdeliveryCustomer(int id) {
		// TODO Auto-generated constructor stub
	}



	public int getCusId() {
		return cusId;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getAddressLine() {
		return addressLine;
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

	public int getRoute_ID() {
		return Route_ID;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public void setRoute_ID(int route_ID) {
		Route_ID = route_ID;
	}
	
	
	
	
	

}
