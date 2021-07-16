<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%
String modelID = request.getParameter("modelID");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kiaora","root","1234Ishini");
	Statement stmt = con.createStatement();
	int rs = stmt.executeUpdate("delete from model where modelID='"+modelID+"'");
	if(rs>0){
		RequestDispatcher dis = request.getRequestDispatcher("St_success.jsp");
		dis.forward(request, response);
	}else{
		RequestDispatcher dis = request.getRequestDispatcher("St_unsuccess.jsp");
		dis.forward(request, response);
	}
	
}catch(Exception e){
	e.printStackTrace();
	System.out.println("error");
}
%>