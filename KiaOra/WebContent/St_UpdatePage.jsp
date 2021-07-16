<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<%
String SupOID = request.getParameter("SupOID");
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kiaora";
String userid = "root";
String password = "1234Ishini";

try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
%>
<%
try {
	con = DriverManager.getConnection(connectionUrl + database, userid, password);
	stmt = con.createStatement();
	String sql = "select * from Sup_Order where SupOID = '" + SupOID + "' ";
	rs = stmt.executeQuery(sql);
	while (rs.next()) {
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update quantity</title>
<link rel="stylesheet" href="Styles/St_header_footer.css">
<link rel="stylesheet" href="Styles/St_form.css">
<script src="JavaScriptSources/St_formBtn.js"></script>
</head>
<body>
<div class="wrapper">
	<!-- header -->
	<div class="header">
		<center>
			<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%">
		</center>

	</div>
	<div class="navigation">
		<ul class="breadcrumb">
			<li><a href="#">Home</a></li>
            <li><a href="#">Employee Portal</a></li>
            <li><a href="adminAccount.jsp"> Admin Account</a></li>
			<li><a href="St_Home.jsp">Stock Handling</a></li>
			<li>Update quantity</li>
		</ul>
	</div>
	<h2 align="center">Update stock</h2>
	<!-- form -->
	<br>
	<div class="st">
		<form action="updateServlet" method="post" name="St_UpdatePage" onsubmit="return(radioBtnValidation());" >
			<table class="sttable">
				<br>
				<tr>
					<td><label>SupOID :</label></td>
					<td><input type="text" name="SupOID" value="<%=rs.getString("SupOID")%>" readonly> </td>
				</tr>
				<tr>
					<td><label>ModelID  :</label></td>
					<td><input type="text" name="modelID" value="<%=rs.getString("modelID")%>" readonly></td>
				</tr>
				<tr>
					<td><label>Quantity :</label></td>
					<td><input type="text" name="Quantity" value="<%=rs.getString("Quantity")%>" readonly> </td>
				</tr>
				<tr>
					<td><label>Amount  :</label></td>
					<td><input type="text" name="Amount" value="<%=rs.getString("Amount")%>" readonly> </td>
				</tr>
				<tr>
					<td><label>CreditPeriod :</label></td>
					<td> <input type="text" name="Credit_Period" value="<%=rs.getString("Credit_Period")%>" readonly> </td>
				</tr>
				<tr>
					<td><label>SupplierID : </label></td>
					<td><input type="text" name="SupplierID" value="<%=rs.getString("SupplierID")%>" readonly> </td>
				</tr>
				<tr>
					<td><label>Status :</label></td>
					<td> <select name="status">
							<option value="<%=rs.getString("status")%>">no</option>
							<option value="yes">yes</option>
						</select>
					</td>
				</tr>
			
			</table>
			<div class="onebtn">
					<input type="submit" id="submitBtn" value="Update">
				</div>
				
			
		</form>
		
	</div>
	<%
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</div>
	<!-- footer -->
	<div class="footer clearfix">
		<p>Copyright©2021 KIAORA Enterprises</p>
		<ul>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="#">RSS feed</a></li>
		</ul>
	</div>
</body>
</html>