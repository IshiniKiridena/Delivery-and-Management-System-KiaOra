<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
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
Connection connection = null;
Statement statement = null;
ResultSet resultSet, resultSet1 = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock details</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">
<script src="JavaScriptSources/St_search.js"></script>
</head>
<body>
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
                 
  				<li><a href="adminAccount.jsp">Admin Account</a></li>
  				<li><a href="collection.jsp">Delivery information </a></li>
  				<li><a href="Delivery_orderSearch.jsp">Search Oder Details</a></li>
  				<li>Order details</li>
			
			
		</ul>

	</div>
	<br>

	<!-- <br><br>-->
<center>
<fieldset> 
	<center>
	
		<h1>Order Details</h1>
	</center>
	<!-- table -->
	<br>
	<br>
<center>	
         
	<table border="1" >

		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Contact</th>
		</tr>
		<%
		try {
			
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			
			String Sroute=request.getParameter("Sroute");
			String sql = "select * from shop where street='"+Sroute+"'";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("name")%></td>
			<td><%=resultSet.getString("addressLine1")%></td>
			<td><%=resultSet.getString("phone")%></td>
			<td>
			
		</tr>
		<%
		}
			
			
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			
			String Croute=request.getParameter("Sroute");
			String sql1 = "select * from customer where street='"+Croute+"'";
			resultSet1 = statement.executeQuery(sql1);
			while (resultSet1.next()) {
		%>
		<tr>
			<td><%=resultSet1.getString("name")%></td>
			<td><%=resultSet1.getString("comapnyAddress")%></td>
			<td><%=resultSet1.getString("phone")%></td>
			<td>
			
		</tr>
		<%
		}
			
			
			
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
	</table>
	<br>
</center>	
</fieldset> 
</center>
	<br>
	<br>
	<div class="hv">  </div>
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
