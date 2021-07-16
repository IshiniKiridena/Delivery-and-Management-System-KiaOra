package com.Promotional;

public class PromoReport {

	private int numberofOrder;
	private int numberofComplete;
	private int numberofUncomplete;
	private double profit;
	private String yearMonth;
	
	public PromoReport(int numberofOrder, int numberofComplete, int numberofUncomplete, double profit,String yearMonth) {
		super();
		this.numberofOrder = numberofOrder;
		this.numberofComplete = numberofComplete;
		this.numberofUncomplete = numberofUncomplete;
		this.profit = profit;
		this.yearMonth =  yearMonth;
	}

	public String getYearMonth() {
		return yearMonth;
	}

	public int getNumberofOrder() {
		return numberofOrder;
	}

	public int getNumberofComplete() {
		return numberofComplete;
	}

	public int getNumberofUncomplete() {
		return numberofUncomplete;
	}

	public double getProfit() {
		return profit;
	}

	
}
