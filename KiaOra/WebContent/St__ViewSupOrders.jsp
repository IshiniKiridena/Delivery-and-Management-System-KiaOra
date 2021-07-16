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
<title>Supplier orders</title>
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
			<li>View supplier orders</li>
		</ul>
	</div>
	<br><br>
	<center><h2>Supplier orders</h2></center><br>
	<table border="1" id="myt">
		<tr>
			<th>SupOID</th>
			<th>Quantity</th>
			<th>modelID</th>
			<th>status</th>
			<th>Action</th>

		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from Sup_Order where status='no'";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("SupOID")%></td>
			<td><%=resultSet.getString("Quantity")%> </td>
			<td><%=resultSet.getString("modelID")%></td>
			<td><%=resultSet.getString("status")%></td>
			
			<td ><a href="St_UpdatePage.jsp?SupOID=<%=resultSet.getString("SupOID") %>"><button class="editBtn"><b>Update</b></button></a></td>
			<!-- <td><button type="button" onclick="updateButton()">Update</button></td> -->
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
	<br><br>
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