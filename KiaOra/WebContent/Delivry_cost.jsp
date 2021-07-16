<%@page import="com.mysql.fabric.xmlrpc.base.Data"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import ="java.util.Date" %>




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
ResultSet resultSet1 = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery cost</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">
<script src="JavaScriptSources/St_search.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>


<style>
  table {
    border-collapse: collapse;
  }
  th, td {
    border: 2px solid black;
    padding: 10px;
    text-align: left;
  }
  
  .back{
  
  		background-color:  	#D3D3D3;
  
  
  }
  
  
  fieldset{
	
	margin:50px 20px 20px 20px;
	width: 70%;
	border-color:black;
	 border-radius: 10px;
	
	background-color:#F8F8F8;
}
  
  
  
</style>









</head>
<body>
	<!-- header -->
	<div class="header">
		<center>
			<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%">
		</center>

	</div>


	<!-- <br><br>-->
<center>

<fieldset> 
	<center>
	
		
	</center>
	<!-- table -->
	<br>
	<br>

<div id="list">

<p style="width: 50%;margin:0% 5%">Date&Time:<%=new Date().toString()%> </p>  
<center>
	<table>
	
	<h1>Delivery cost</h1>
		<tr >
		    <th><h3>Vehicle_No<h3></th>
			<th><h3>RouteID<h3></th>
			<th><h3>Cost<h3></th>
			<th><h3>Date<h3></th>
			 
			
		</tr>
		
		<br>
		
		
			
			
			<br><br>
			

		<%
		try {
			
			
			String month=request.getParameter("Month");
			
			String val;
		
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			
		
				String sql = "select *   from travels where date LIKE '"+month+"%'";
				resultSet = statement.executeQuery(sql);
				
				
				
				while (resultSet.next()) {
				
		
			
		%>
		<tr>
			<td><%=resultSet.getString("Vehicle_No")%></td>
			<td><%=resultSet.getString("RouteID")%></td>
			<td><%=resultSet.getString("Cost")%></td>
			<td><%=resultSet.getString("Date")%></td>
			 
			
			
		</tr>
		<%
		}
				
				String sql1 = "select SUM(Cost) AS new_cost   from travels where date LIKE '"+month+"%'";
				resultSet1 = statement.executeQuery(sql1);
				Float Tot;
				
				Float New_cost;	
					
				if(resultSet1.next()){
					
					New_cost=resultSet1.getFloat("new_cost");
					
					
					
				}
				
				%>
				<tr class="back">
				    <td><h4> Monthly total cost</h4> </td>
					<td><h4><%=resultSet1.getString("new_cost")%></h4></td>
					
					 
					
					
				</tr>
				<%
				 
				
				
			
					
					
					            
				
				
					
					
					
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
	
		
	</table>
	</center>
  </div> 
 
		
	
	<br>
	
</fieldset> 

<button onclick="print()" class="button2">Download  Report</button>
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
	
	
	<script >
	
	function print(){
	var element = document.getElementById("list");
	var opt = {
	  margin:       1,
	  filename:     'Delivery cost.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 2 },
	  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
	};
	 
	// New Promise-based usage:
	html2pdf().from(element).set(opt).save();
	
	}
	
	
	</script>
	
	
	
	
	
</body>
</html>
