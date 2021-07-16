package com.SPpersonalCustomer;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.net.httpserver.Authenticator.Result;

import DBConnections.DBConnect;

public class SPpersonalDeliveryRegisterUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean insertPersonalCustomer(String name, String NIC, String addressLine, String street, String city, int phoneNo, int routeId) {
		
		boolean isSuccess = false;
		
		
	   try {
		   
		   //DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
						
			String sql = "insert into kiaora.customer(cusID, name, nic, AddressLine, street, city, phone, Route_ID) values(0, '"+name+"' ,'"+NIC+"', '"+addressLine+"', '"+street+"', '"+city+"',"
					+ " '"+phoneNo+"', '"+routeId+"' )";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) { 
				isSuccess = true;
			}else {
				isSuccess = false; 
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.print("error");
		}
		
		return isSuccess;
		
	}
	
	public static boolean insertPersonalOrder(int cusID, String itemCode, double unitPrice, double initpay , String status, String pDay, String dDay) {
			
			boolean isSuccess = false, updatesuccuss = false;;
			ResultSet rs2 = null,rs3 = null;
			int orderID = 0;
			String type = "Personal";
			double itemPrice =0;
			int orderId =0;
			double totalAmount =0,price = 0;
			
		
			System.out.println(status);
		
		   try {
			   
			   //DB connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				
				
							
				String sql = "insert into kiaora.order values(0, '"+dDay+"' , null , '"+initpay+"' , 3 , '"+unitPrice+"', '"+unitPrice+"', '"+status+"',  null , '"+pDay+"', null,  '"+cusID+"', null,  '"+itemCode+"')";
				
				int rs = stmt.executeUpdate(sql);
				
				
				if(rs > 0) { 
					
					isSuccess = true;
				}else {
					isSuccess = false; 
					
				}
					//get unit price
					String sql2 ="SELECT * FROM kiaora.model where modelID = '"+itemCode+"'";	
					
				
					rs2 = stmt.executeQuery(sql2);
					
					
				
						if(rs2.next()) {
								
							itemPrice = rs2.getDouble(4);
							System.out.println(itemPrice);   
							
							
						}
					
					//get order ID
					String sql3 ="SELECT * FROM kiaora.order ORDER BY orderID DESC LIMIT 1";
					rs3 = stmt.executeQuery(sql3);
						
							
						if(rs3.next()) {
								
							orderId = rs3.getInt(1);
							System.out.println(orderId);
								
						}
						

						if(status.equals("paid")){
							
							double profit = totalAmount - itemPrice;
							
							String payment ="insert into kiaora.monthly_payment values(0,'"+profit+"','"+pDay+"','"+orderId+"',null,'"+type+"')";
							 int rs4 = stmt.executeUpdate(payment);
							
							if(rs4 > 0)
								updatesuccuss = true;
							
							else
								updatesuccuss = false;
							
						}
						
				
				
				
			}catch(Exception e) {
				e.printStackTrace();
				System.out.print("error");
			}
			
			return isSuccess;
			
		}
	
	
		public static List<SPdeliveryCustomer> validate (String nic){
			
			ArrayList<SPdeliveryCustomer> cus = new ArrayList<>();
			
				try {  
				   //DB connection
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					
						
					String sql = "select cusID, name, nic, AddressLine, street, city, phone from kiaora.customer where nic  = '"+nic+"'" ;
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int id= rs.getInt(1);  
						String name = rs.getString(2);
						String nid = rs.getString(3);
						String address = rs.getString(4);
						String street = rs.getString(5);
						String city = rs.getString(6);
						int phone = rs.getInt(7);
						
						SPdeliveryCustomer dc =  new SPdeliveryCustomer(id, name, nid, address, street, city, phone);
						cus.add(dc);
						
					} 
						
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.print("error");
				}
				
			return cus;
		}
		
		
		public static boolean updateCustomer(int id, String name, String nic, String address, String street, String city, int phone) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update kiaora.customer set name = '"+name+"', nic = '"+nic+"' , AddressLine = '"+address+"', street = '"+street+"', city ='"+city+"', phone = '"+phone+"'" + 
				 "where cusID = '"+id+"'";
				
				
				int rs = stmt.executeUpdate(sql);
				
				System.out.print(id);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		public static boolean deleteCustomer(int customerId) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from kiaora.customer where cusID = '"+customerId+"'";
				int rs = stmt.executeUpdate(sql);
				
				System.out.print(customerId);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}catch(Exception e){
				e.getStackTrace();
			}
			
			return isSuccess;
		}
		
		
		public static List<PersonalOrder> validateOrder(int orderId){
			
			ArrayList<PersonalOrder> ord = new ArrayList<>();
			
				try {  
				   //DB connection
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					System.out.print(orderId);
					
					
						
					String sql = "select orderID, dueDate, amountPaid, creditPeriod, unitPrice, status, orderDate, cusID from kiaora.order where orderID = '"+orderId+"'";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int oid= rs.getInt(1);  
						String duedate = rs.getString(2);
						double amountPaid = rs.getDouble(3);
						int period = rs.getInt(4);
						double UnitPrice = rs.getDouble(5);
						String status = rs.getString(6);
						String orderDate = rs.getString(7);
						int cusId = rs.getInt(8);
						
						
						
						PersonalOrder dc =  new PersonalOrder(oid, duedate, amountPaid, period, UnitPrice, status, orderDate, cusId);
						ord.add(dc);
						
					} 
						
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.print("error");
				}
				
			return ord;
		
		}
		
public static boolean updateOrder(String oid, String due, String amount, String credit, String unit, String status, String odate,String prevstatus) {
	
	ResultSet rs2;
	String itemcode = null;
	double itemPrice = 0;
	String type = "Personal";
	boolean updatesuccuss = false;
	
	double tot_payemnt = Double.parseDouble(amount);
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "update kiaora.order set orderId = '"+oid+"', dueDate = '"+due+"' , amountPaid = '"+amount+"', creditPeriod = '"+credit+"', unitPrice ='"+unit+"', status = '"+status+"', "
				+ " orderDate = '"+odate+"'" + "where orderID = '"+oid+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		//get Item
		String sql2 ="SELECT * FROM kiaora.order where orderID = '"+oid+"'";	

		rs2 = stmt.executeQuery(sql2);
		
		
	
			if(rs2.next()) {
					
				itemcode = rs2.getString(14);
				System.out.println(itemcode);   
				
				
			}
			
			//get unit price
			String sql3 ="SELECT * FROM kiaora.model where modelID = '"+itemcode+"'";	
			
		
			rs2 = stmt.executeQuery(sql3);
			
			
		
				if(rs2.next()) {
						
					itemPrice = rs2.getDouble(4);
					System.out.println(itemPrice);   
					
					
				}
				
			
			
				
				if(status.equals("paid") && prevstatus.equals("NotPaid")){
					
					double profit = tot_payemnt - itemPrice;
					
					String payment ="insert into kiaora.monthly_payment values(0,'"+profit+"','"+odate+"','"+oid+"',null,'"+type+"')";
					 int rs4 = stmt.executeUpdate(payment);
					
					if(rs4 > 0)
						updatesuccuss = true;
					
					else
						updatesuccuss = false;
					
				}
		
	
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
		
		
		public static boolean deleteOrder(int orderId) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from kiaora.order where orderID = '"+orderId+"'";
				int rs = stmt.executeUpdate(sql);
				
				
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}catch(Exception e){
				e.getStackTrace();
			}
			
			return isSuccess;
		}
		

		public static List<SPdeliveryCustomer> displayID (String nic){
			
			ArrayList<SPdeliveryCustomer> cus = new ArrayList<>();
			
				try {  
				   //DB connection
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					
						
					String sql = "select cusID, name from kiaora.customer where nic = '"+nic+"'";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int id= rs.getInt(1);
						String name = rs.getString(2);
						
						SPdeliveryCustomer dc =  new SPdeliveryCustomer(id, name);
						cus.add(dc);
						
					} 
						
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.print("error");
				}
				
			return cus;
		}
		
		
		public static List<PersonalOrder> SearchCustomerOrder(){

			 

		    ArrayList<PersonalOrder> proCusOrder = new ArrayList<>();
		    try {
		        con= DBConnect.getConnection();
		        stmt = con.createStatement();
		        String sql ="SELECT * FROM kiaora.order ORDER BY orderID DESC LIMIT 1";
		        rs = stmt.executeQuery(sql);
		        
		        if (rs.next()) {
		           
		             int orderID = rs.getInt(1);
		             String dueDate = rs.getString(2);
		             double discount = rs.getInt(3);
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
		             
		            
		             PersonalOrder customerorder = new PersonalOrder(orderID, dueDate, discount, amountPaid, totPayment, unitPrice, quantity, oDate, updatedDate,paymentStatus, cusID, modelID);
		            proCusOrder.add(customerorder);
		            
		            System.out.println(orderID);
		             
		        } 

		 

		    } catch (Exception e) {
		        e.printStackTrace();
		        System.out.println("Error123");
		        
		    }
		    
		    return proCusOrder;
		 }
		
		
		public static int getRouteID(String street) {
			int routeid = 0;
			try {
				
				con= DBConnect.getConnection();
		        stmt = con.createStatement();
		        String sql ="SELECT RouteID from route where Route_Name = '"+street+"'";
		        rs = stmt.executeQuery(sql);
		        
		        while(rs.next()) {
		        	routeid =rs.getInt(1);
		        }
				
				
			}catch(Exception e) {
				e.getStackTrace();
			}
			
			return routeid;
		}
		
		
public static boolean UpdateInstallment(int OrderID,double UpdateAmount,double Amount,String payStatus,String UpdateDate) {
	
	boolean isSuccess = false,updatesuccuss = false;
	double price = 0,prof_tot =0;
	ResultSet rs2 = null,rs3 = null;
	String type = "Personal";
	int quantity = 0;
	String itemcode = null;
	double itemPrice = 0;
	
	double PaidAmount = UpdateAmount +Amount;
	


	try {
		
		con= DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "Update kiaora.order set amountPaid = '"+PaidAmount+"',status = '"+payStatus+"',updatedDate = '"+UpdateDate+"' where orderID = '"+OrderID+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		
		if(rs > 0)
			isSuccess = true;
		else
			isSuccess = false;
		
		
		//get Item
				String sql2 ="SELECT * FROM kiaora.order where orderID = '"+OrderID+"'";	

				rs2 = stmt.executeQuery(sql2);
				
				
			
					if(rs2.next()) {
							
						itemcode = rs2.getString(14);
						System.out.println(itemcode);   
						
						
					}
					
					//get unit price
					String sql3 ="SELECT * FROM kiaora.model where modelID = '"+itemcode+"'";	
					
				
					rs2 = stmt.executeQuery(sql3);
					
					
				
						if(rs2.next()) {
								
							itemPrice = rs2.getDouble(4);
							System.out.println(itemPrice);   
							
							
						}
		


		
		if(payStatus.equals("paid")){
			
			double profit = PaidAmount - itemPrice;
		
			String payment ="insert into kiaora.monthly_payment values(0,'"+profit+"','"+UpdateDate+"','"+OrderID+"',null,'"+type+"')";
				 int rs4 = stmt.executeUpdate(payment);
				
				if(rs4 > 0)
					updatesuccuss = true;
				
				else
					updatesuccuss = false;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getStackTrace());
		}
			
			return isSuccess;
		}
	
public static List<PersonalReport> getPersonalReportDetails(String prorepYear,String prorepMonth){

	String yearMonth =prorepYear +  prorepMonth;
	String type = "Personal", status ="PartiallyPaid";
	int completeOrder = 0,notPaid = 0, noofOrder = 0;
	double profit =0;
	
	ArrayList<PersonalReport> pmonthlyreport = new ArrayList<>();
	
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
	PersonalReport report = new PersonalReport(noofOrder,completeOrder,notPaid,profit,yearMonth);
	pmonthlyreport.add(report);

	return pmonthlyreport;
 }	
	
	 
		
}
		
	

	
	
	
	
	
	

	


