package com.employee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import DBConnections.DBConnect;

public class EmpDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password){
		
		
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from employee where emp_username ='"+username+"' and emp_password ='"+password+"'";
			rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

	
	public static String authenticateUser(Employee employee) {
		String username = employee.getUsername();
		String password = employee.getPassword();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from employee where emp_username ='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String userU = rs.getString(3);
				String pword = rs.getString(4);
				String position = rs.getString(7);
				
				if(username.equals(userU)&&password.equals(pword)&&position.equals("Administrator"))
					return "adminrole";
				else if(username.equals(userU)&&password.equals(pword)&&position.equals("Driver"))
					return "driverrole";
				else if(username.equals(userU)&&password.equals(pword)&&position.equals("Manager"))
					return "manager";
				else if(username.equals(userU)&&password.equals(pword)&&position.equals("Sales Representative"))
					return "salesrep";
				else if(username.equals(userU)&&password.equals(pword)&&position.equals("Technician"))
					return "technician";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
	
	public static boolean insertemp(String id,String name,String address,int phone,String position,String username,String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into employee values('"+id+"','"+name+"','"+username+"','"+password+"','"+address+"','"+phone+"','"+position+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess = true;
			else
				isSuccess = false;
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean insertsal(String id) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into emp_salary (emp_id) values('"+id+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess = true;
			else
				isSuccess = false;
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Employee> searchemp(String id) {
		
		ArrayList<Employee> emp = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from employee where emp_id='"+id+"'";
			rs = stmt.executeQuery(sql); 
			
			while(rs.next()) {
				String idemp = rs.getString(1);
				String name = rs.getString(2);
				String username = rs.getString(3);
				String password = rs.getString(4);
				String address = rs.getString(5);
				int phone = rs.getInt(6);
				String position = rs.getString(7); 
				
				Employee e = new Employee(idemp,name,username,password,address,phone,position);
				emp.add(e);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return emp;
		
	}
	
	public static List<EmployeeSalary> getempsal(String id){
		
		ArrayList<EmployeeSalary> esal = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from emp_salary where emp_id='"+id+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String idemp = rs.getString(1);
				Date saldate = rs.getDate(2);
				Double basicsal = rs.getDouble(3);
				Double targetcovered = rs.getDouble(4);
				Double targetsales = rs.getDouble(5);
				int commision = rs.getInt(6);
				
				EmployeeSalary es = new EmployeeSalary(idemp,saldate,basicsal,targetcovered,targetsales,commision);
				esal.add(es);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return esal;
	}
	
	public static boolean updateemployee(String id,String name,String username,String password,String address,int phone,String position) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update employee set emp_id='"+id+"',emp_name='"+name+"',emp_username='"+username+"',emp_password='"+password+"',emp_address='"+address+"',emp_phone='"+phone+"',emp_position='"+position+"'"
					+ "where emp_id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess=true;
			else
				isSuccess=false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; 
		
	}
	
	public static boolean upempsal(String id,String saldate,Double basicsal,Double targetcovered,Double targetsales,int commision,Double totalsal) {
		
		
		if(targetcovered<=targetsales) {
			totalsal=basicsal;
		}else {
			totalsal=(targetcovered-targetsales)*(commision/100)+basicsal;
		}
		try {	
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update emp_salary set sal_date='"+saldate+"',basic_sal='"+basicsal+"',target_covered='"+targetcovered+"',target_sales='"+targetsales+"',commision='"+commision+"',total_salary='"+totalsal+"'"
					+"where emp_id='"+id+"'";
				
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess=true;
			else
				isSuccess=false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteemployee(String id) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from employee where emp_id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess=true;
			else
				isSuccess=false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean delsal(String id) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from emp_salary where emp_id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
				isSuccess=true;
			else
				isSuccess=false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
