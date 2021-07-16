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
<link rel="stylesheet" href="Styles/St_header_footer.css">
<link rel="stylesheet" href="Styles/St_form.css">
<script src="JavaScriptSources/St_search.js"></script>
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
			<li>Stock details</li>
			<p>	<input  id="searchbar" onkeyup="searchFunction()" type="text"
				name="search" placeholder="Search models..."></p>
			<!-- search bar -->
			
		</ul>
	</div>
	<br>
	<br>

	<!-- <br><br>-->

	<center>
		<h2>Stock details</h2>
		<br>
	</center>
	<!-- table -->
	<table border="1" id="myt">
		<tr>
			<th>ModelID</th>
			<th>Brand</th>
			<th>Category</th>
			<th>unitPrice</th>
			<th>Warranty</th>
			<th>quantity</th>
			<th>minumumLimt</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from model";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("modelID")%></td>
			<td><%=resultSet.getString("brand")%></td>
			<td><%=resultSet.getString("category")%></td>
			<td><%=resultSet.getString("unitprice")%></td>
			<td><%=resultSet.getString("warranty")%></td>
			<td><%=resultSet.getString("quantity")%></td>
			<td><%=resultSet.getString("minimumlimit")%></td>
			<td><a
				href="St_modelDetailsUpdatePage.jsp?modelID=<%=resultSet.getString("modelID")%>"><button
						class="editBtn">
						<b> Update </b>
					</button></a></td>
			<td><a
				href="St_deleteProcess.jsp?modelID=<%=resultSet.getString("modelID")%>"><button
						class="deleteBtn">
						<b> Delete </b>
					</button></a></td>
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
	<br>
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