package com.vehicle;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List; 

import DBConnections.*;

@SuppressWarnings("unused")
public class vehicleDBUtill {
	
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	

	public static List<vehicle> validate(String no){
		
		
		
		ArrayList<vehicle> cus=new  ArrayList<>();
	
	try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
	
	
	
			
			String sql="select * from kiaora.vehicle where Vehicle_No='"+no+"'";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			System.out.println(rs);
			if(rs.next())
			{
				String No=rs.getString(1);
				String type=rs.getString(2);
				String brand=rs.getString(3);
				int milage=rs.getInt(4);
			
				
				
				vehicle c=new  vehicle(No,type,brand,milage);
				cus.add(c);
			}
		}
		
		catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		
		return cus;
		
	}

    public static boolean insertcustomer(String no,String type,String brand,int milage ) {
    	
    	boolean isSuccsess =false;
    	
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
		
            String sql="insert into vehicle values('"+no+"','"+type+"','"+brand+"','"+milage +"' )";
			
            int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccsess=true;
			}else
			{
				isSuccsess=false;
			}
			
		}catch (Exception e){
			
			e.printStackTrace();
		}
    	return isSuccsess;
    }
    
    
    public static boolean updatevehicle(String no,String type,String brand,int milage) {
    	
    	System.out.println(no);
    	
    	boolean isSuccsess =false;
    	try {
    		
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update vehicle set milage='"+milage+"'"+"where Vehicle_No='"+no+"'";
			
			 int rs = stmt.executeUpdate(sql);
			 
				if(rs>0)
				{
					isSuccsess=true;
				}else
				{
					isSuccsess=false;
				}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccsess;
    }
    
    public static boolean deletevehicle(String no)
    {
    	
    	try {
    		
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="delete from kiaora.vehicle where Vehicle_No ='"+no+"'";
			int r =stmt.executeUpdate(sql);
			

			if(r>0)
			{
				isSuccess=true;
			}else
			{
				isSuccess=false;
			}
    		
    		
    	}catch(Exception e){
    		
    		e.printStackTrace();
    	}
    	
    	
		return isSuccess;
    }
    
    public static boolean insertroute(String Rname ) {
    	
    	boolean isSuccsess =false;
    	
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
		
            String sql="insert into route  values(0,'"+Rname+"' )";
			
            int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccsess=true;
			}else
			{
				isSuccsess=false;
			}
			
		}catch (Exception e){
			
			e.printStackTrace();
		}
    	return isSuccsess;
    }
    
    
    
    
    public static boolean insertcost(String Vno,int cname,float cost ,String Date) {
    	
    	boolean isSuccsess =false;
    	
		
		
		try {
			
			
			con = DBConnect.getConnection();   
			stmt = con.createStatement();
			

			
           
            String sql="insert into kiaora.travels values(0,'"+Vno+"','"+cname+"','"+cost+"','"+Date+"')";
           
          
            int rs = stmt.executeUpdate(sql);
			
         
            
			if(rs>0)
			{
				isSuccsess=true;
			}else
			{
				isSuccsess=false;
			}
			
		}catch (Exception e){
			System.out.println("error");
			e.printStackTrace();
		}
    	return isSuccsess;
    }
	
	
}
