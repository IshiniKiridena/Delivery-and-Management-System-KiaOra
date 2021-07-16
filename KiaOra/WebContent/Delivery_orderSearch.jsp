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
String password ="m300#856";
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
<title>Order Details</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">
<script src="JavaScriptSources/St_search.js"></script>


	<script>
		
	function validateForm(){
		
		var Sroute=document.myform.Sroute.value;
		

			if(Sroute==""){
				
				alert("Route name is empty!!!!");
				return false;
			}
		}
	</script>







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
  				<li>Search order</li>
			
			
		</ul>

	</div>
	<br>

	<!-- <br><br>-->
<center>
		<fieldset> 
            
            <h1>Search orders</h1><br><br>
            
        <form action="Delivery_oder.jsp" methode="post" name="myform" onsubmit="return validateForm()">
        
              Rote name<input type="text" name="Sroute" id="Sroute" placeholder="Route name"><br><br>
                   <button type="submit" name="submit" id="submit" class="button2">Search</button><br><br>
                   
          	</form>
          	
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
