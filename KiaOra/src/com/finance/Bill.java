package com.finance;

public class Bill {
	private int bill_code;
	private String utility_type;
	private String dueDate;
	private String status;
	private double amount;
	private int date;
	private String month;
	
	public Bill(int bill_code, String utility_type, String dueDate, String status, double amount, int date,
			String month) {
		this.bill_code = bill_code;
		this.utility_type = utility_type;
		this.dueDate = dueDate;
		this.status = status;
		this.amount = amount;
		this.date = date;
		this.month = month;
	}

	public int getBill_code() {
		return bill_code;
	}

	public String getUtility_type() {
		return utility_type;
	}

	public String getDueDate() {
		return dueDate;
	}

	public String getStatus() {
		return status;
	}

	public double getAmount() {
		return amount;
	}

	public int getDate() {
		return date;
	}

	public String getMonth() {
		return month;
	}
	
}
