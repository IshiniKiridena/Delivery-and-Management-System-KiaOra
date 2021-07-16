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
ResultSet resultSet = null;
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
			
			<li><a href="adminAccount.jsp">Home</a></li>
  				<li><a href="collection.jsp">Delivery information </a></li>
  				<li><a href="routeReg.jsp">Route Registration</a></li>
  				<li>Route details</li>
			
			
		</ul>

	</div>
	<br>

	<!-- <br><br>-->
<center>
<fieldset> 
	<center>
	
		<h1>Route details</h1>
	</center>
	<!-- table -->
	<br>
	<br>
<center>	
	<table border="1" >
	
		<tr>
			<th>RouteID</th>
			<th>Route_Name</th>
			
		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from route";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("RouteID")%></td>
			<td><%=resultSet.getString("Route_Name")%></td>
			
			<td><a href="Route_deleteProcess.jsp?RouteID=<%=resultSet.getString("RouteID")%>"><button class="button3">Delete</button></a></td>
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
