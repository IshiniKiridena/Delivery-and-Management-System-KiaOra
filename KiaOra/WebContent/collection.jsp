<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">

                 



</head>
<body>




 	<div class = "wrapper">
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  				   <li><a href="#">Home</a></li>
                  <li><a href="#">Employee Portal</a></li>
                 <li><a href="adminAccount.jsp">Admin Account</a></li>
				<li>Delivery home</li>
			</ul> 
		</div>


<br>
<br><br>   <br>   
                  
<center>
<h1>Delivery Information </h1>
  <fieldset>
 <br>
<br> 
	<form action="Vehicle Registration .jsp" method="post">
		<button class="button1" >Vehicle registration</button><br><br>
	</form>
	<br>   
	<form action="searchVehicle.jsp" method="post">
		<button class="button1" >Vehicle details</button><br><br>
	</form>
	<br>   
	<form action="routeReg.jsp" method="post">
	<button class="button1">Route details</button><br><br>
	</form>
	<br>   
	<form action="cost.jsp" method="post">
	<button class="button1">Add cost</button><br><br>
	</form>
	<br>
	<form action="Delivery_orderSearch.jsp" method="post">
	<button class="button1">Order details</button><br><br>
	</form>
	<br>
	
	
	<form action="Delivery_R_search.jsp" method="post">
	<button class="button1">Monthly total cost  </button><br><br>
	</form>
	
<br>
<br>	
	  </fieldset>
	
</center>

<div class="hv">  </div>

	<div class = "footer clearfix">
			<p>Copyright©2021 KIAORA Enterprises</p>

			<ul>
				<li><a href = "#">Facebook</a></li>
				<li><a href = "#">Twitter</a></li>
				<li><a href = "#">Instagram</a></li>
				<li><a href = "#">RSS feed</a></li>
			</ul>
		</div> <!-- footer -->
			
	</div><!-- wrapper -->


</body>
</html>