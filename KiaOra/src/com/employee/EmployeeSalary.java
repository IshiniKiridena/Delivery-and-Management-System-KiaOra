package com.employee;

import java.util.Date;

public class EmployeeSalary {

	private String id;
	private Date saldate;
	private double basicsal;
	private double targetcovered;
	private double targetsales;
	private int commision;
	
	
	public EmployeeSalary(String id, Date saldate, double basicsal, double targetcovered, double targetsales,
			int commision) {
		super();
		this.id = id;
		this.saldate = saldate;
		this.basicsal = basicsal;
		this.targetcovered = targetcovered;
		this.targetsales = targetsales;
		this.commision = commision;
	}


	public String getId() {
		return id;
	}


	public Date getSaldate() {
		return saldate;
	}


	public double getBasicsal() {
		return basicsal;
	}


	public double getTargetcovered() {
		return targetcovered;
	}


	public double getTargetsales() {
		return targetsales;
	}


	public int getCommision() {
		return commision;
	}	
	
	
}
