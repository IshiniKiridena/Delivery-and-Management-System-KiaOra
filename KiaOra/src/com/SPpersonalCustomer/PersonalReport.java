package com.SPpersonalCustomer;

public class PersonalReport {

	
	private int pnumberofOrder;
    private int pnumberofComplete;
    private int pnumberofUncomplete;
    private double pprofit;
    private String pyearMonth;
    
    public PersonalReport(int pnumberofOrder, int pnumberofComplete, int pnumberofUncomplete, double pprofit,String pyearMonth) {
        super();
        this.pnumberofOrder = pnumberofOrder;
        this.pnumberofComplete = pnumberofComplete;
        this.pnumberofUncomplete = pnumberofUncomplete;
        this.pprofit = pprofit;
        this.pyearMonth =  pyearMonth;
    }

	public int getPnumberofOrder() {
		return pnumberofOrder;
	}

	public int getPnumberofComplete() {
		return pnumberofComplete;
	}

	public int getPnumberofUncomplete() {
		return pnumberofUncomplete;
	}

	public double getPprofit() {
		return pprofit;
	}

	public String getPyearMonth() {
		return pyearMonth;
	}


    
}
