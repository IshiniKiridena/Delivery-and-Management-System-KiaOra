<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%

int RouteID = Integer.parseInt(request.getParameter("RouteID"));
try{
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kiaora","root","1234Ishini");
	Statement stmt = con.createStatement();
	int rs = stmt.executeUpdate("delete from route where RouteID='"+RouteID+"'");
	if(rs>0){
		RequestDispatcher dis = request.getRequestDispatcher("Dsuccess.jsp");
		dis.forward(request, response);
	}else{
		RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
		dis.forward(request, response);
	}
	
}catch(Exception e){
	e.printStackTrace();
}
%>