package com.Repair;

public class RepairItem {
	private int cusID;
	private int rItemNo;
	private String ritemName;
	private String warranty_status;
	private String damageDescription;
	private String amount;
	private String returningDate;
	
	public RepairItem(int cusID,int rItemNo, String ritemName, String warranty_status, String damageDescription, String amount,
			String returningDate) {
		this.cusID=cusID;
		this.rItemNo = rItemNo;
		this.ritemName = ritemName;
		this.warranty_status = warranty_status;
		this.damageDescription = damageDescription;
		this.amount = amount;
		this.returningDate = returningDate;
	}
	

	public int getCusID() {
		return cusID;
	}


	public int getrItemNo() {
		return rItemNo;
	}

	public String getRitemName() {
		return ritemName;
	}

	public String getWarranty_status() {
		return warranty_status;
	}

	public String getDamageDescription() {
		return damageDescription;
	}

	public String getAmount() {
		return amount;
	}

	public String getReturningDate() {
		return returningDate;
	}

}
