<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kiaora";
String userid = "root";
String password = "1234Ishini";
//String password = "Pm981121#";
String year = request.getParameter("year");
String month = request.getParameter("month");
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
<title>stock report</title>
<link rel="stylesheet" href="Styles/St_header_footer.css?version3">
<link rel="stylesheet" href="Styles/St_form.css?version3">
<script src="JavaScriptSources/St_formBtn.js"></script>
<script src="JavaScriptSources/St_report.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
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
	
	<div id="stockdetails">
		<center><h2>Monthly Stock Details Report</h2></center><br><br>
		<p align="center"><b>Date & Time : <%= new Date().toString()%></b></p><br>
		
		<table border="1" id="mytreport">
			<tr>
				<th>ModelID</th>
				<th>Sold items</th>
				
	
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "Select modelID,sum(quantity) from kiaora.order where orderDate like '"+year+"-"+month+"%' group by modelID;";
				//String sql = "Select modelID,sum(quantity) from kiaora.order where orderDate like '2020-04%' group by modelID;";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr>
				<td><%=resultSet.getString("modelID")%> </td>
				<td><%=resultSet.getString("sum(quantity)")%></td>
				
				
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
	<center><button onclick="print()" class="downloadBtn"><b>Download PDF</b></button></center><br><br>
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
</html>