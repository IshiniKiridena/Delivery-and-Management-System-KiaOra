package com.shopCatering;

public class LastNoClass{

	private String lastId;//lastid
	
	private String lastIdintString;//local varible to store digitNo

	public LastNoClass(String lastId) {
		super();
		this.lastId = lastId;
	}

	//getter for get lastId
	public String getLastId() {
		return lastId;
	}
	
	
	public void split() {
		//split the string and get the final string which starts from 3rd index
		lastIdintString =lastId.substring(2);
		
	}
	

	public int getLastNo() {
       
        
        int lastIdint = Integer.parseInt(lastIdintString);
      
		return lastIdint;
		
		
		
	}

	
	
}
