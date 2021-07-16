<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Order Update</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PersonalCustomerAndOrder.css"/>
</head>
<body>
	<%
		String oid = request.getParameter("oid");
		String dueDate = request.getParameter("dueDate");
		String amountPaid = request.getParameter("amountPaid");  
		String creditPeriod = request.getParameter("creditPeriod");
		String unitPrice = request.getParameter("unitPrice");
		String status = request.getParameter("status");
		String orderDate = request.getParameter("orderDate");
		String cusId = request.getParameter("cusId");
	%>
	
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
		    <a class="dropdown-item" href="mainMenu.jsp">Customer Registration</a>
		    <a class="dropdown-item" href="SPsearchCustomer.jsp">Customer Account</a>
		   
		    
		  </div>
	</div>
	<div class="btn-group">
	  <button style="background-color:#04406c; border : none;  " type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Order
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalOrderRegister.jsp">New Order</a>
	    <a class="dropdown-item" href="SPsearchCustomer.jsp">Search Order</a>
	    <a class="dropdown-item" href="#"></a>
	    
	  
	  </div>
	</div>
	
	<div class="btn-group">
	  <button style="background-color:#04406c; border : none;"  type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Payment
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalInstallment.jsp">Installment</a>
	  
	  </div>
	</div>
	
<h4 style="color:#04406c; text-align : center; " id = "updatecus"><strong>PERSONAL
ORDER UPDATE</strong></h4>	


	<div class = "main4"	>
		<div class="maincontainer">
	
		<form action = "orderupdate" method = "post">
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Order ID</strong></label>
		      <input style="border-color:  #fcb45c;" type="text" name = "oid" class="form-control" id="inputEmail4" value = "<%=oid%>" readonly>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputPassword4"><strong>Due Date</strong></label>
		      <input style="border-color:  #fcb45c;" type="text" name = "dueDate" class="form-control" id="inputPassword4" value = "<%=dueDate%>"  required>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputAddress"><strong>Amount Paid</strong></label>
		    <input style="border-color:  #fcb45c;" type="text" name = "amountPaid" class="form-control" id="inputAddress"  value = "<%=amountPaid%>">
		  </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>Credit Period</strong></label>
		    <input style="border-color:  #fcb45c;" type="text" name = "creditPeriod" class="form-control" id="inputAddress"  value = "<%=creditPeriod%>">
		  </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>unit Price</strong></label>
		    <input style="border-color:  #fcb45c;" type="text" name = "unitPrice" class="form-control" id="inputAddress" value = "<%=unitPrice%>" >
		  </div>
	
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Status</strong></label>
		      <input  style="border-color:  #fcb45c;"type="text" name = "status" class="form-control" id="inputEmail4" value = "<%=status%>" required>
		    </div>
		   </div>
		   
		   <div class="form-row">
		    <div class="form-group col-md-6">
		     
		      <input  style="border-color:  #fcb45c;"type="hidden" name = "prevstatus" class="form-control" id="inputEmail4" value = "<%=status%>" required>
		    </div>
		   </div>
		 
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputCity">Order Date</label>
		      <input style="border-color:  #fcb45c;"type="text" name = "orderDate" class="form-control" id="inputCity" value = "<%=orderDate%>" required><br>
		    </div> 
		    
		   
			<br>
			
		    </div>
		 </div>
		 
		  <button style="background-color:#04406c; margin-top : 10px; margin-left : 130px; margin-bottom: 30px; " type="submit" class="btn btn-primary">Update Order</button>
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