package com.finance;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBConnections.DBConnect;

public class BillDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert bill method
	public static boolean insertBill(String utility_type,String dueDate ,String status , String amount ,String date , String month) {
		
		try {
			//create DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql insert query
			String sql = "INSERT INTO showroom_bill VALUES (0,'"+utility_type+"','"+dueDate+"','"+status+"','"+amount+"','"+date+"','"+month+"')";
			//execute query
			int rs = stmt.executeUpdate(sql);
			
			//checking the query execution succession
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//bill search method
	public static List<Bill> searchBill(String month, String utility_type){
		
		ArrayList<Bill> bill = new ArrayList<>();
		
		try {
			//create DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql select query
			String sql = "SELECT * FROM showroom_bill WHERE month = '"+month+"' AND utility_type = '"+utility_type+"'";
			//execute query
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				//get data from result set
				int bill_code = rs.getInt(1) ;
				String utility_typeDB = rs.getString(2);
				String dueDate = rs.getString(3);
				String status = rs.getString(4);
				double amount = rs.getDouble(5);
				int date = rs.getInt(6);
				String monthDB = rs.getString(7);
				
				Bill b = new Bill(bill_code,utility_typeDB,dueDate,status,amount,date,monthDB);
			
				bill.add(b);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return bill;
	} 
	
	public static boolean updateBill(String bill_code, String utility_type,String dueDate ,String status , String amount ,String date , String month) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//update query
			String sql = "UPDATE showroom_bill SET utility_type='"+utility_type+"',dueDate='"+dueDate+"',status='"+status+"',amount='"+amount+"',date='"+date+"',month='"+month+"' WHERE bill_code='"+bill_code+"'";
			//execute query
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteBill(String bill_code) {
		
		int convertedBill_code = Integer.parseInt(bill_code);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//delete query
			String sql = "DELETE FROM showroom_bill WHERE bill_code='"+convertedBill_code+"'";
			//execute query
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false; 
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	public static List<Bill> getBillDetails(String bill_code) {
		
		ArrayList<Bill> bill = new ArrayList<>();
		
		try {
			//create DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//sql select query
			String sql = "SELECT * FROM showroom_bill WHERE bill_code= '"+bill_code+"'";
			//execute query
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				//get data from result set
				int bill_codeDB = rs.getInt(1) ;
				String utility_type = rs.getString(2);
				String dueDate = rs.getString(3);
				String status = rs.getString(4);
				double amount = rs.getDouble(5);
				int date = rs.getInt(6);
				String month = rs.getString(7);
				
				Bill b = new Bill(bill_codeDB,utility_type,dueDate,status,amount,date,month);
			
				bill.add(b);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return bill;
	}
}































