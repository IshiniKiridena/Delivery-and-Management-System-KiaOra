<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Personal Customer Payments</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PersonalCusRegister.css"/>

</head>
<body>

	<div class = "wrapper">
		 
			<div class = "header">
				<center>
					<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
				</center>
			</div>
			
		<div class="btn-group">
		  <button style="background-color:#04406c; border : none;" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Customer
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="PersonalCustomerRegister.jsp">Customer Registration</a>
		    <a class="dropdown-item" href="SPsearchCustomer.jsp">Customer Account</a>
		   
		    
		  </div>
	</div>
	<div class="btn-group">
	  <button style="background-color:#04406c; border : none; " type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Order
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalOrderRegister.jsp">New Order</a>
	    <a class="dropdown-item" href="SPsearchCustomer.jsp">Search Order</a>
	    <a class="dropdown-item" href="#"></a>
	    
	  
	  </div>
	</div>
	
	<div class="btn-group">
	  <button style="background-color:#04406c; border : none; "type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Payment
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="PersonalCustomerPayment.jsp">Get Remaining</a>
	  
	  </div>
	</div>
	
		
<h4 style="color:black; text-align : center; " id = "updatecus"><strong>PERSONAL CUSTOMER PAYMENTS</strong></h4>

<div style="margin-left : 550px; padding-top : 40px; " class = "pay">
	<form class="form-inline">
	    <input class="form-control mr-sm-2" type="search" placeholder="Enter Customer ID" aria-label="Search">
	    <button  style=" border-color: #04406c;color : #04406c;" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
 	</form>
 </div>
 	

<div class="wrapper2">
	
	<div class="maincontainer">
		
	<form action = "register" method = "post" name = "form1" onsubmit="return validateForm()">
	  
	  <div class="form-group">
	    <label for="inputAddress"><strong>Customer Name</strong></label>
	    <input style="border-color:  #fcb45c;" type="text" name = "address" class="form-control" id="inputAddress" >
	  </div>
	  
	  <div class="form-group">
	    <label for="inputAddress"><strong>Remaining Amount</strong></label>
	    <input style="border-color:  #fcb45c;" type="text" name = "address" class="form-control" id="inputAddress" >
	  </div>
	  
	  
	    <button style="background-color: #04406c; margin-top : 20px; margin-left : 170px; " type="submit" class="btn btn-primary">Done</button>
	 
	    
	    </div>
	  </div>
	 
	</form>

	</div>
	
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