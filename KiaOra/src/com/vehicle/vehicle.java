package com.vehicle;

public class vehicle {
    
	private String no;
	private String type;
	private String brand;
	private int milage;
	
	
	public vehicle(String no, String type, String brand, int milage) {
		super();
		this.no = no;
		this.type = type;
		this.brand = brand;
		this.milage = milage;
	}


	public String getNo() {
		return no;
	}



	public String getType() {
		return type;
	}


	public String getBrand() {
		return brand;
	}



	public int getMilage() {
		return milage;
	}


	
	
}
