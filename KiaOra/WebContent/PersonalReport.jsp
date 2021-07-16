<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Personal Report Form</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/personalReport.css"/>
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
	    <a class="dropdown-item" href="personalInstallment.jsp">Installment</a>
	  
	  </div>
	</div>
	
	


<div class ="form-wrapper">
	
	<fieldset>
		<h4 style="color: #04406c; text-align : center; margin-top : 10px; margin-bottom : 40px " id = "updatecus"><strong>PERSONAL CUSTOMER REPORT</strong></h4>
		
		
		<div class="form-cd1-wrapper">
			<form action="PersonalReportServlet" method="post" class="form-cd1">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Year</label>
				  		</div>
				  		<div class="form-input">
				  			<input type= "text" name="persYear" required="">
				  		</div>
				  	</div>
				  	<div>
					  		<div class="form-label">
					  			<label>Month</label>
					  		</div>
					  		<div class="form-select">
					  			<select name="persMonth" id="proItems" required=""><br>
				  					<option value="-01">January</option>
				 					<option value="-02">February</option>
				 					<option value="-03">March</option>
				 					<option value="-04">April</option>
				 					<option value="-05">May</option>
				 					<option value="-06">June</option>
				 					<option value="-07">July</option>
				 					<option value="-08">August</option>
				 					<option value="-09">September</option>
				 					<option value="-10">October</option>
				 					<option value="-11">November</option>
				 					<option value="-12">December</option>
	 					
								</select>
					  		</div>
					  	</div>
				  	
				  	
			  	</div>
			  	<div class ="form-submit">
			  		<input type ="submit" name="submit" value="Send" >
			  	</div>
			  	
			  </form>
		</div>
		
		
	  
	  		
	</fieldset>		

	
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
			
</div><!-- wrapper -->	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>