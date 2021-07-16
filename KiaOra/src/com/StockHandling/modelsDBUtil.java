package com.StockHandling;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBConnections.DBConnect;

public class modelsDBUtil {
	
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;

	public static boolean insertModels(String modelID,String brand,String category,double unitprice,String warranty,int quantity,int mil) {
		boolean isSuccess =false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="insert into model values ('"+modelID+"','"+brand+"','"+category+"','"+unitprice+"','"+warranty+"','"+quantity+"','"+mil+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess= true;
			}else
				isSuccess=false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	/*public static List<supplerOrders> getSupplierOrderDetails(){
		
		ArrayList<supplerOrders> supOrders = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from Sup_Order where status='no'" ;
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int SupOID = rs.getInt(1);
				String modelID = rs.getString(6);
				String status =rs.getString(7);
				int Quantity=rs.getInt(2);
				
				supplerOrders so = new supplerOrders(SupOID,modelID,status,Quantity); 
				
				supOrders.add(so);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return supOrders;
	}*/
	public static boolean updateStock(int SupOID,int quantity,String Amount,String Credit_Period,String SupplierID,String modelID,String status) {
		PreparedStatement ps = null;
		boolean isSuccess =false;
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//String sql1 = "update model set quantity =( quantity+?) where modelID = '"+modelID+"'";
			String sql3 = "update sup_order set SupOID=?,quantity=?,Amount=?,Credit_Period=?,SupplierID=?,modelID=?,status=? where SupOID='"+SupOID+"'";
			ps = con.prepareStatement(sql3);
			ps.setInt(1, SupOID);
			ps.setInt(2, quantity);
			ps.setString(3, Amount);
			ps.setString(4, Credit_Period);
			ps.setString(5, SupplierID);
			ps.setString(6,modelID );
			ps.setString(7, status);

			int rs = ps.executeUpdate();
			try {
			String sql1 = "update model set quantity=(quantity+'"+quantity+"') where modelID = '"+modelID+"'";
			stmt.executeUpdate(sql1);
			}catch(Exception e) {
				System.out.println("!!!Cannot update the model qunatity!!!");
			}
			
			System.out.println("Updated the status");
			
			for(int i=0;i<quantity;i++) {
				String sql2 = "insert into item values (0,'"+modelID+"')";
				stmt.executeUpdate(sql2);
			}
			
			System.out.println("completed");
			
			
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	public static boolean updateModelDetails(String modelID,String brand,String category,double unitprice,String warranty,int quantity,int minimumlimit) {
		boolean isSuccess =false;
		PreparedStatement ps =null;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update model set modelID=?,brand=?,category=?,unitprice=?,warranty=?,quantity=?,minimumlimit=? where modelID='"+modelID+"'";
			ps = con.prepareStatement(sql);
			ps.setString(1, modelID);
			ps.setString(2, brand);
			ps.setString(3, category);
			ps.setDouble(4, unitprice);
			ps.setString(5, warranty);
			ps.setInt(6,quantity );
			ps.setInt(7, minimumlimit);

			int rs = ps.executeUpdate();
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	/*public static boolean deleteModel(String modelID,String brand,String category,double unitprice,String warranty,int quantity,int minimumlimit) {
		boolean isSuccess =false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from model where modelID='+modelID+'";
			int rs = stmt.executeUpdate(sql);
			System.out.println("Delete ...");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}*/
	
	
}
