<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Personal customer Installments</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PersonalCustomerAndOrder.css"/>
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
	
	<table style ="margin-left : 120px; margin-top : 30px;">
	<c:forEach var ="cusOrder" items ="${personalIntall}">		
	
		<c:set var ="orderID" value ="${cusOrder.orderID}"></c:set>
		<c:set var ="amountPaid" value ="${cusOrder.amountPaid}"></c:set>
			<tr>
				<td>
					Order ID
				</td>
				<td>
					${cusOrder.orderID}
				</td>
			</tr>
				
			
			<tr>
				<td>
					Paid Amount
				</td>
				<td>
					${cusOrder.amountPaid}
				</td>
			</tr>
			
			<tr>
				<td>
					Order Date
				</td>
				<td>
					${cusOrder.orderDate}
				</td>
			</tr>
			
			
		</c:forEach>
	</table>
	
	<input type ="hidden" name = "proOrderID" value = "${orderID}">
	

	
	
	
	<div class = "wrapper2">	
		<div class="main">
		
	<form action="updateInstall" method="post">
	<h4 style="color:#04406c; padding-bottom : 100px  id = "updatecus"><strong>PERSONAL ORDER INSTALLMENT</strong></h4>
		<div class="form-group">
			<input type ="hidden" name = "proAmount" value = "${amountPaid}">
		    <label for="exampleInputEmail1"><strong>Order ID</strong></label>
		    <input style="border-color:  #fcb45c;  width: 350px; " type="text" name = "orderID" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Customer ID"  required>
		    
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1"><strong>Amount Paid</strong></label>
		    <input style="border-color:  #fcb45c;  width: 350px; " type="number" name = "amount" class="form-control" id="exampleInputPassword1" placeholder="1200.00" required min = "1" >

		</div>
		
		 <div class="form-group">
		    <label for="exampleInputPassword1"><strong>Paid Date</strong></label>
		    <input style="border-color:  #fcb45c;  width: 350px; " type="date" name = "date" class="form-control" id="exampleInputPassword1"  required  >

		</div>

		  
	   

		<div class="form-check">
			
		  <input class="form-check-input" type="radio" name="status" id="exampleRadios1" value="paid" checked>
		  <label class="form-check-label" for="exampleRadios1">
		   Fully Paid
		  </label>
		</div>

		<div class="form-check">
		  <input class="form-check-input" type="radio" name="status" id="exampleRadios2" value="NotPaid">
		  <label class="form-check-label" for="exampleRadios2">
		    Remained
		  </label>
		</div>
		
	

	 	 <button style="margin-top : 20px; margin-left : 120px; background-color:#04406c; margin-bottom : 20px" type="submit" class="btn btn-primary">Update</button>
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
				
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	
	

</body>
</html>