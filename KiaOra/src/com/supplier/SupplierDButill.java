package com.supplier;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;




import java.sql.ResultSet;

 

import DBConnections.DBConnect;         

 

public class SupplierDButill {
    
   
	private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    

 

      public static boolean insertsupplier( String companyname,String phone,String address ) {
            
            boolean isSuccsess =false;
            
            
           
            
            try {
                
                con = DBConnect.getConnection();
                stmt = con.createStatement();
                 String sql="insert into kiaora.supplier values(0, '"+companyname+"','"+phone+"','"+address+"')";
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

 

      
      public static boolean insertAddord( int Quantity,float Amount,int Credit_Period,int supplierID,String date,String modelid ,String status ) {
            
            boolean isSuccsess =false;
            
            System.out.println("Quantity1234"+Amount+Credit_Period+supplierID+date+modelid+status);
            
            
            try {
                
                con = DBConnect.getConnection();
                stmt = con.createStatement();
                 String sql="insert into kiaora.sup_order values(0,'"+Quantity+"','"+Amount+"','"+Credit_Period+"','"+supplierID+"','"+date+"','"+modelid+"','"+status+"')";
                int rs = stmt.executeUpdate(sql);
                
            System.out.println(rs);
                
                if(rs>0)
                {
                    isSuccsess=true;
                }else
                {
                    isSuccsess=false;
                }
                
            }catch (Exception e){
                System.out.println("InsertAddorder");
                e.printStackTrace();
            }
            return isSuccsess;
        }

 

    
      public static ArrayList<Supplier> validate(String supplier){
          System.out.println("aCA");
          ArrayList<Supplier> sup = new ArrayList<>();
          
          
          
          
          System.out.println(supplier);
          
          
          try {
              
              con = DBConnect.getConnection();
              stmt = con.createStatement();
              String sql = "select * from supplier where CompanyName='"+supplier+"'";
              ResultSet rs = stmt.executeQuery(sql);
              
          
          if(rs.next()) {
              int id = rs.getInt(1);
              String company_name = rs.getString(2);
              String phone = rs.getString(3);
              String address = rs.getString(4);
              
              
              Supplier s = new Supplier( id,company_name,phone,address);
              sup.add(s);
              
              
          }
                              
          }
          catch(Exception e) {
              System.out.println("SearchDButill");    
               e.printStackTrace();
               
          
          
      }
          return sup;

      }
 

 

    
        
         public static boolean insertpayment( float Amount,String Date,int SupplierID ) {
                
                boolean isSuccsess =false;
                
                
                System.out.println("Amount1234"+Date+SupplierID);
                
                try {
                    
                    con = DBConnect.getConnection();
                    stmt = con.createStatement();
                     String sql="insert into kiaora.sup_payment values(0,'"+Amount+"','"+Date+"','"+SupplierID+"')";
                    int rs = stmt.executeUpdate(sql);
                    
                System.out.println(rs);
                    
                    if(rs>0)
                    {
                        isSuccsess=true;
                    }else
                    {
                        isSuccsess=false;
                    }
                    
                }catch (Exception e){
                    System.out.println("insertpayment");
                    e.printStackTrace();
                }
                return isSuccsess;
            }
        
        
        
    

         
      public static boolean updatesupplier( String id,String companyname,String phone,String address ) {
    	  
    		boolean isSuccess = false;
			try {
        		
        		con = DBConnect.getConnection();
        		stmt = con.createStatement();
        		String sql = "update supplier set CompanyName='"+companyname+"',Phone='"+phone+"',Address='"+address+"'"
        				+ "where SupplierID='"+id+"'";
        		int rs = stmt.executeUpdate(sql);
        		System.out.println(rs);
        		
        		if(rs > 0) {
        			isSuccess = true;
        		}
        		else {
        			isSuccess = false;
        		}
        		
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	
        	return isSuccess;
        }	  
    	  

     public static boolean deletesupplier(int id) {
		
    	 
    	 boolean issuccess = false;
    	 try {
    		 
    		 con = DBConnect.getConnection();
     		stmt = con.createStatement();
     		
     		System.out.println("1");
     		
     		String sql = "delete from kiaora.supplier where SupplierID='"+id+"'";
     		System.out.println("2");
     		int rs = stmt.executeUpdate(sql);
     		System.out.println("3");
     		
			if(rs > 0) {
    			issuccess = true;
    		}
    		else {
    			issuccess = false;
    		}
     		
     		
    	 }
    	 catch(Exception e) {
     		e.printStackTrace();
     	}
    	 
    	 
    	
		
		return issuccess;


         
     }
     
     public static boolean deleteorder(String id) {
     
    	  int convertid=Integer.parseInt(id);
    	  
    	 boolean issuccess = false;
    	 try {
    		 
    		 con = DBConnect.getConnection();
     		stmt = con.createStatement();
     		String sql = "delete from sup_order where SupOID='"+convertid+"'";
     		int rs = stmt.executeUpdate(sql);
     		
     		
			if(rs > 0) {
    			issuccess = true;
    		}
    		else {
    			issuccess = false;
    		}
     		
     		
    	 }
    	 catch(Exception e) {
     		e.printStackTrace();
     	}
    	 
    	 
    	
		
		return issuccess;


         
     }
     
     
     

public static ArrayList<Supplier> getSupplierDetails(String companyname){
	
	

   ArrayList<Supplier> sup = new ArrayList<>();
   
   try {
	   
	   con = DBConnect.getConnection();
	   stmt = con.createStatement();
	   String sql = "select * from supplier where CompanyName='"+companyname+"'";
		rs = stmt.executeQuery(sql);   
		System.out.println(rs);
		
		while(rs.next()){
			   
			int id = rs.getInt(1);
			String DBcompanyname = rs.getString(2);
			String phone = rs.getString(3);
			String address = rs.getString(4);
			
			Supplier s = new Supplier(id,DBcompanyname,phone,address);
			sup.add(s);
   }
   }
   catch(Exception e) {
		e.printStackTrace();
	}
   
   return sup;
	
	
   
}


public static boolean updateoder(int orderid, String quantity,String credit_Period,String amount,String supplierID,String date,String modelid ) {
	 
	
	System.out.println(orderid);
	boolean isSuccess = false;
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		System.out.println("1");
		String sql = "update kiaora.sup_order set SupOID='"+orderid+"',  Quantity='"+quantity+"',Credit_Period='"+credit_Period+"',Amount='"+amount+"',modelID='"+modelid+"' where SupOID='"+orderid+"'";
		
		System.out.println("2");
		int rs = stmt.executeUpdate(sql);
		System.out.println("3");
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		System.out.println("4");
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("Show some error");
		
	}
	
	return isSuccess;
}	  



public static ArrayList<supoder> validate1(String sup_order){
    System.out.println("aCA");
    ArrayList<supoder> odr = new ArrayList<>();
    
    
    System.out.println(sup_order);
    
    
    try {
        
        con = DBConnect.getConnection();
        stmt = con.createStatement();
        String sql = "select * from sup_order where SupOID='"+sup_order+"'";
        ResultSet rs = stmt.executeQuery(sql);
        
    
    if(rs.next()) {
    	System.out.println("Hello"); 
        int id = rs.getInt(1);
        String quantity = rs.getString(2);
        String amount = rs.getString(3);
        String credit_Period = rs.getString(4);
        String supplierID = rs.getString(5);
        String date = rs.getString(6);
        String modelid = rs.getString(7);
        String status= rs.getString(8);
        
        System.out.println(quantity);
        
        supoder supod = new supoder( id,quantity,amount,credit_Period,supplierID,date,modelid);
        odr.add(supod);
        
        
    }
                        
    }
    catch(Exception e) {
        System.out.println("SearchDButill");    
         e.printStackTrace();
         
    
    
}
    return odr;

}
}



















	
