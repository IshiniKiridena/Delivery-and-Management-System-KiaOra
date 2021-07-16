<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Order Success</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PC_Home.css"/>

</head>
<body>

<div class = "navbar">
		<div class = "wrapper">
			 
				<div class = "header">
					<center>
						<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
					</center>
				</div>
				
			<div class="btn-group">
			  <button style="background-color:#000f89; border : none;" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Customer
			  </button>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="personalOrderRegister.jsp">Customer Registration</a>
			    <a class="dropdown-item" href="SPsearchCustomer.jsp">Customer Account</a>
			   
			    
			  </div>
		</div>
		<div class="btn-group">
		  <button style="background-color:#000f89; border : none; " type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Order
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="personalOrderRegister.jsp">New Order</a>
		    <a class="dropdown-item" href="SPsearchCustomer.jsp">Search Order</a>
		    <a class="dropdown-item" href="#"></a>
		    
		  
		  </div>
		</div>
		
		<div class="btn-group">
		  <button style="background-color:#000f89; border : none; "type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Payment
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="PersonalCustomerPayment.jsp">Get Remaining</a>
		  
		  </div>
		</div>
	
</div>

</div>

		<div class = "showMessageSuccess">
			<center>
			
				 <img src="images/success.png" alt="success" width="170" height="170">
				 
				 <br><br><br><br> 
				
				<h1>Success!</h1>
				<br><br>
				<h3><a href = "emp_reg.jsp">Register new employee</a></h3>
				<h3><a href = "emphome.jsp">Go to employee home page</a></h3>
			</center>
		</div>
	
	
		
	

	
	
			<div class = "footer clearfix"> 
					<p>Copyright©2021 KIAORA Enterprises</p>
		
					<ul>
						<li><a href = "#">Facebook</a></li>
						<li><a href = "#">Twitter</a></li>
						<li><a href = "#">Instagram</a></li>
						<li><a href = "#">RSS feed</a></li>
					</ul>
				</div> <!-- footer -->
			
	</div>
	
	
		
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	


</body>
</html>