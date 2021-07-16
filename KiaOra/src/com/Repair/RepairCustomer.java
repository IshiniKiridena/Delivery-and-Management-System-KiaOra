
package com.Repair;

public class RepairCustomer {
	private int cusID;
	private String name;
	private String nic;
	private String addressLine;
	private String street;
	private String city;
	private int  phone;
	
	public RepairCustomer(int cusID, String name, String nic, String addressLine, String street, String city,
			int phone) {
		
		this.cusID = cusID;
		this.name = name;
		this.nic = nic;
		this.addressLine = addressLine;
		this.street = street;
		this.city = city;
		this.phone = phone;
	}

	public int getCusID() {
		return cusID;
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

	public int getPhone() {
		return phone;
	}


	

	

}
