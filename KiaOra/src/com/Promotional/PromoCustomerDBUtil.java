package com.Promotional;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBConnections.DBConnect;

public class PromoCustomerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	//insert Customer Details
	public static boolean insertPromoCustomer(String procusname,String procusnic,String promoline,String promostreet,String promocity, int procuscontact, String procmpanyname,String procompaddress ) {
		
		boolean isSuccess = false;
	
	//create database connection and insert data in to the database
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="insert into kiaora.customer values(0,'"+procusname+"','"+procusnic+"','"+promoline+"','"+promostreet+"','"+promocity+"','"+procuscontact+"','"+procmpanyname+"','"+procompaddress+"',null)";
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
	}
		
		return isSuccess;
	}
	
	
	//insert Customer Order Details
	public static boolean insertProOrder(String proPurchasedDate,float proItemUnDiscount,double proAmount,double proItemUnPrice,int proItemQuantity,String paymentStatus,int promocusID,String proItem) {
		
		boolean isSuccess = false,updatesuccuss = false;
		double totalAmount =0,price = 0;
		double discount =0,prof_tot =0;
		ResultSet rs2 = null,rs3 = null;
		String type = "Promotional";
		int orderID = 0;
		
		
		
		discount = (proItemUnPrice * proItemQuantity) * proItemUnDiscount /100;
				
		totalAmount = (proItemUnPrice * proItemQuantity) - discount;
		
		try {
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			
			//insert new order
			String sql ="insert into kiaora.order values(0,'"+proPurchasedDate+"','"+proItemUnDiscount+"','"+proAmount+"',null,'"+totalAmount+"','"+proItemUnPrice+"','"+paymentStatus+"','"+proItemQuantity+"','"+proPurchasedDate+"','"+proPurchasedDate+"','"+promocusID+"',null,'"+proItem+"','"+type+"')";
			int rs = stmt.executeUpdate(sql);
	
				if(rs > 0)
					isSuccess = true;
				
				else
					isSuccess = false;
			
			//get item unit price
			String sql2 ="SELECT * FROM kiaora.model where modelID= '"+proItem+"'";	
			rs2 = stmt.executeQuery(sql2);
				
				if(rs2.next()) {
					
					 price = rs2.getDouble(4);
					
				}
			
			
			//get order ID
			String sql3 ="SELECT * FROM kiaora.order ORDER BY orderID DESC LIMIT 1";
			rs3 = stmt.executeQuery(sql3);
			
				
				if(rs3.next()) {
					
					  orderID = rs3.getInt(1);
					
				}
			
			if(paymentStatus.equals("Paid")){
				
				prof_tot = totalAmount - (price * proItemQuantity);
				
				String payment ="insert into kiaora.monthly_payment values(0,'"+prof_tot+"','"+proPurchasedDate+"','"+orderID+"',null,'"+type+"')";
				 int rs4 = stmt.executeUpdate(payment);
				
				if(rs4 > 0)
					updatesuccuss = true;
				
				else
					updatesuccuss = false;
				
			}
	
	
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error456789");
		}
		
		
			return isSuccess;
	}
	

public static boolean ValidateCustomerInsert(String procusnic) {
			
		
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="select * from kiaora.customer where NIC ='"+procusnic+"'";
		rs = stmt.executeQuery(sql);
		
		if (!rs.next() ) {
		   
		    return false;
		} else {
			return true;
		}

		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
		return false;
	}
		
		
	}

public static List<ProCustomer> SearchCustomer(String procusnic){

	
	
	
	ArrayList<ProCustomer> proCus = new ArrayList<>();
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="select * from kiaora.customer where NIC ='"+procusnic+"'";
		rs = stmt.executeQuery(sql);
	
		
		if (rs.next()) {
		   
			 int cusID = rs.getInt(1);
			 String name = rs.getString(2);
			 String NIC = rs.getString(3);
			 String AddressLine = rs.getString(4);
			 String street = rs.getString(5);
			 String city = rs.getString(6);
			 int phoneNo = rs.getInt(7);
			 String companyName = rs.getString(8);
			 String companyAddress = rs.getString(9);
			 
			 
			 ProCustomer customer = new ProCustomer(cusID, name, NIC, AddressLine, street, city, phoneNo, companyName, companyAddress);
			 proCus.add(customer);
			 
		} 
		

	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
		
	}
	
	return proCus;
 }

public static List<ProCustomer> SearchNewCustomer(int promocusID){

	
	
	
	ArrayList<ProCustomer> proCus = new ArrayList<>();
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="select * from kiaora.customer where cusID ='"+promocusID+"'";
		rs = stmt.executeQuery(sql);
	
		
		if (rs.next()) {
		   
			 int cusID = rs.getInt(1);
			 String name = rs.getString(2);
			 String NIC = rs.getString(3);
			 String AddressLine = rs.getString(4);
			 String street = rs.getString(5);
			 String city = rs.getString(6);
			 int phoneNo = rs.getInt(7);
			 String companyName = rs.getString(8);
			 String companyAddress = rs.getString(9);
			 
			 
			 ProCustomer customer = new ProCustomer(cusID, name, NIC, AddressLine, street, city, phoneNo, companyName, companyAddress);
			 proCus.add(customer);
			 
		} 
		

	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
		
	}
	
	return proCus;
 }



public static List<ProCustomerOrder> SearchCustomerOrder(){

	ArrayList<ProCustomerOrder> proCusOrder = new ArrayList<>();
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="SELECT * FROM kiaora.order ORDER BY orderID DESC LIMIT 1";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
		   
			 int orderID = rs.getInt(1);
			 String dueDate = rs.getString(2);
			 float discount = rs.getInt(3);
			 double amountPaid = rs.getDouble(4);
			 int creditPeriod = rs.getInt(5);
			 double totPayment = rs.getDouble(6);
			 double unitPrice = rs.getDouble(7);
			 String paymentStatus = rs.getString(8);
			 int quantity = rs.getInt(9);
			 String oDate = rs.getString(10);
			 String updatedDate = rs.getString(11);
			 int cusID = rs.getInt(12);
			 int shopID = rs.getInt(13);
			 String modelID = rs.getString(14);
			 double remainingAmount = totPayment - amountPaid;
			
			ProCustomerOrder customerorder = new ProCustomerOrder(orderID, dueDate, discount, amountPaid, totPayment, unitPrice, quantity, oDate, updatedDate,paymentStatus, cusID, modelID,remainingAmount);
			proCusOrder.add(customerorder);
			 
		} 

	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error123");
		
	}
	
	return proCusOrder;
 }

public static boolean UpdatePromoCustomer(int proCusID,String procusname, String procusnic,int procuscontact, String promoline, String promocity, String promostreet, String procompaddress, String procmpanyname) {
		
		
		boolean isSuccess = false;
	
	
	try {
		
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "Update kiaora.customer set name = '"+procusname+"',nic = '"+procusnic+"',AddressLine = '"+promoline+"',street = '"+promostreet+"',city = '"+promocity+"',phone = '"+procuscontact+"',"
					  + "companyName = '"+procmpanyname+"',comapnyAddress = '"+procompaddress+"' where cusID = '"+proCusID+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error654123");
	}
		
		return isSuccess;
	}
	
	
public static boolean UpdatePromoCustomerOrder(int proOrderID,String proItem, double proItemUnPrice,int proItemQuantity, float proItemUnDiscount, double proAmount, String paymentStatus, String proPurchasedDate, String prevPaystatus) {
		
		
		boolean isSuccess = false,updatesuccuss = false;
		double totalAmount,price = 0;
		double discount,prof_tot =0;
		String type = "Promotional";
		ResultSet rs2 = null;
		
		
			
		discount = (proItemUnPrice * proItemQuantity) * proItemUnDiscount /100;
				
		totalAmount = (proItemUnPrice * proItemQuantity) - discount;
	
	
	try {
		
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "Update kiaora.order set discount = '"+proItemUnDiscount+"',amountPaid = '"+proAmount+"',totPayment = '"+totalAmount+"',unitPrice = '"+proItemUnPrice+"',status = '"+paymentStatus+"',quantity = '"+proItemQuantity+"',"
					  + "orderDate = '"+proPurchasedDate+"',modelID = '"+proItem+"' where orderID = '"+proOrderID+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
		//get item unit price
		String sql2 ="SELECT * FROM kiaora.model where modelID= '"+proItem+"'";	
		rs2 = stmt.executeQuery(sql2);
			
			if(rs2.next()) {
				
				 price = rs2.getDouble(4);
				
			}
		
	
		
		if(paymentStatus.equals("Paid") && prevPaystatus.equals("PartiallyPaid")){
			
			prof_tot = totalAmount - (price * proItemQuantity);
			
			String payment ="insert into kiaora.monthly_payment values(0,'"+prof_tot+"','"+proPurchasedDate+"','"+proOrderID+"',null,'"+type+"')";
			 int rs4 = stmt.executeUpdate(payment);
			
			if(rs4 > 0)
				updatesuccuss = true;
			
			else
				updatesuccuss = false;
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error123456");
	}
		
		return isSuccess;
	}

public static List<ProCustomerOrder> SearchPreviousCustomerOrder(int proOrderID){

	ArrayList<ProCustomerOrder> proCusOrder = new ArrayList<>();
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="SELECT * FROM kiaora.order where orderID= '"+proOrderID+"'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
		   
			 int orderID = rs.getInt(1);
			 String dueDate = rs.getString(2);
			 float discount = rs.getInt(3);
			 double amountPaid = rs.getDouble(4);
			 int creditPeriod = rs.getInt(5);
			 double totPayment = rs.getDouble(6);
			 double unitPrice = rs.getDouble(7);
			 String paymentStatus = rs.getString(8);
			 int quantity = rs.getInt(9);
			 String oDate = rs.getString(10);
			 String updatedDate = rs.getString(11);
			 int cusID = rs.getInt(12);
			 int shopID = rs.getInt(13);
			 String modelID = rs.getString(14);
			 double remainingAmount = totPayment - amountPaid;
			 
			ProCustomerOrder customerorder = new ProCustomerOrder(orderID, dueDate, discount, amountPaid, totPayment, unitPrice, quantity, oDate, updatedDate,paymentStatus, cusID, modelID,remainingAmount);
			proCusOrder.add(customerorder);
			 
		} 

	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error123548");
		
	}
	
	return proCusOrder;
 }

public static boolean DeletePromoCustomer(int proCusID) {

	
	boolean isSuccess = false;
		
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
			
		String sql ="delete from kiaora.customer where cusID = '"+proCusID+"'";
		int rs = stmt.executeUpdate(sql);
			
		if(rs > 0) {
				
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
			
			
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
		
 }

public static boolean DeletePromoCustomerOrder(int proOrderID) {

	
	boolean isSuccess = false;
		
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
			
		String sql ="delete from kiaora.order where orderID = '"+proOrderID+"'";
		int rs = stmt.executeUpdate(sql);
			
		if(rs > 0) {
				
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
			
			
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
		
 }
public static boolean UpdateInstallment(int proOrderID,double proUpdateAmount,double proAmount,String paymentStatus,String ProUpdateDate,double totPayment,String modelID) {
	
	boolean isSuccess = false,updatesuccuss = false;
	double price = 0,prof_tot =0;
	ResultSet rs2 = null,rs3 = null;
	String type = "Promotional";
	int quantity = 0;
	
	System.out.println(proOrderID+totPayment+modelID);
	//new total amount
	double proPaidNewAmount = proUpdateAmount +proAmount;



	try {
		
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "Update kiaora.order set amountPaid = '"+proPaidNewAmount+"',status = '"+paymentStatus+"',updatedDate = '"+ProUpdateDate+"' where orderID = '"+proOrderID+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
		
		//get item unit price
		String sql2 ="SELECT * FROM kiaora.model where modelID= '"+modelID+"'";	
		rs2 = stmt.executeQuery(sql2);
			
			if(rs2.next()) {
				
				 price = rs2.getDouble(4);
				
			}
			
			//get order quantity
			String sql3 ="SELECT * FROM kiaora.order where orderID= '"+proOrderID+"'";	
			rs3 = stmt.executeQuery(sql3);
				
				if(rs3.next()) {
					
					 quantity = rs3.getInt(9);
					
				}
			
		
		
	
		
		if(paymentStatus.equals("Paid")){
			
			prof_tot = totPayment - (price * quantity);
			
			String payment ="insert into kiaora.monthly_payment values(0,'"+prof_tot+"','"+ProUpdateDate+"','"+proOrderID+"',null,'"+type+"')";
			 int rs4 = stmt.executeUpdate(payment);
			
			if(rs4 > 0)
				updatesuccuss = true;
			
			else
				updatesuccuss = false;
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error123456");
	}
		
		return isSuccess;
	}

public static boolean UpdateQuantity(String proItem,int proItemQuantity) {
	
	boolean isSuccess = false;
	int minimumlimit = 0, mquantity = 0;
	ResultSet rs2;
	
	
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="update kiaora.model set quantity = quantity -'"+proItemQuantity+"' where modelID = '"+proItem+"'";
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
		
		String sql2 ="SELECT * FROM kiaora.model where modelID= '"+proItem+"'";	
		rs2 = stmt.executeQuery(sql2);
			
			if(rs2.next()) {
				
				minimumlimit = rs2.getInt(7);
				
			}
			
			System.out.println(minimumlimit);
			
		String sql3 ="SELECT * FROM kiaora.model where modelID= '"+proItem+"'";	
		rs2 = stmt.executeQuery(sql3);
			
			if(rs2.next()) {
				
				mquantity = rs2.getInt(6);
				
			}
			System.out.println(mquantity);
			
			
			if(mquantity < minimumlimit) {
				System.out.println("quantity is reduced");
			}
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
	}
		
		return isSuccess;
}

public static boolean UpdateNewQuantity(String proPriviousItem,String proItem,int proItemQuantity,int proPriviousquantity) {
	
	boolean isSuccess = false;
	int newqQuantity = 0,rs,rs2;
	
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		
		if(proPriviousItem.equals(proItem)) {
			
			newqQuantity = proItemQuantity - proPriviousquantity ;
			String sql ="update kiaora.model set quantity = quantity -'"+newqQuantity+"' where modelID = '"+proPriviousItem+"'";
			rs = stmt.executeUpdate(sql);
		}
		else {
			String sql ="update kiaora.model set quantity = quantity +'"+proPriviousquantity+"' where modelID = '"+proPriviousItem+"'";
			String sql2 ="update kiaora.model set quantity = quantity -'"+proItemQuantity+"' where modelID = '"+proItem+"'";
			rs = stmt.executeUpdate(sql);
			rs2 = stmt.executeUpdate(sql2);
		}
		
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
	}
		
		return isSuccess;
}

public static boolean UpdateDeleteQuantity(String proItem,int proItemQuantity) {
	
	boolean isSuccess = false;
	
	
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="update kiaora.model set quantity = quantity +'"+proItemQuantity+"' where modelID = '"+proItem+"'";
		int rs = stmt.executeUpdate(sql);
			
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error");
	}
		
		return isSuccess;
 }

public static List<PromoReport> getReportDetails(String prorepYear,String prorepMonth){

	String yearMonth =prorepYear +  prorepMonth;
	String type = "Promotional", status ="PartiallyPaid";
	int completeOrder = 0,notPaid = 0, noofOrder = 0;
	double profit =0;
	
	ArrayList<PromoReport> monthlyreport = new ArrayList<>();
	
	try {
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="SELECT Count(paymentID) AS count FROM kiaora.monthly_payment where type= '"+type+"' AND date LIKE '"+yearMonth+"%'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
		   
			  completeOrder = rs.getInt("count");
			 
			 
		} 
		
		//get profit
		String sql2 ="SELECT SUM(amount) AS profit FROM kiaora.monthly_payment where type= '"+type+"' AND date LIKE '"+yearMonth+"%'";
		rs = stmt.executeQuery(sql2);
		
		if (rs.next()) {
		   
			profit = rs.getDouble("profit");
			 
			 
			 
		} 
		//get non complete order orders
		String sql3 ="SELECT Count(orderID) AS notPaid FROM kiaora.order where type= '"+type+"' AND status = '"+status+"'AND orderDate LIKE '"+yearMonth+"%'";
		rs = stmt.executeQuery(sql3);
		
		if (rs.next()) {
		   
			notPaid = rs.getInt("notPaid");
		 
		} 
		String sql4 ="SELECT Count(orderID) AS noofOrder FROM kiaora.order where type= '"+type+"' AND orderDate LIKE '"+yearMonth+"%'";
		rs = stmt.executeQuery(sql4);
		
		
		if (rs.next()) {
		   
			noofOrder = rs.getInt("noofOrder");
			System.out.println(noofOrder);
		 
		} 
		
		

	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error123548");
		
	}
	PromoReport report = new PromoReport(noofOrder,completeOrder,notPaid,profit,yearMonth);
	monthlyreport.add(report);

	return monthlyreport;
 }
	
}
		
	
