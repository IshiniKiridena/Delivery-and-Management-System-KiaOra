<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Delete Personal Customer</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PersonalCusRegister.css"/>
<script type="text/javascript" src="javaScriptSources/insertCusValid.js"></script>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
	%>
	
	
	
		<div class = "wrapper">
		
			<div class = "header">
				<center>
					<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
				</center>
	</div>
	
	<div class="btn-group">
		  <button style="background-color:#04406c; border: none;" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Customer
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="PersonalCustomerRegister.jsp">Customer Registration</a>
		    <a class="dropdown-item" href="SPsearchCustomer.jsp">Customer Account</a>
		   
		    
		  </div>
	</div>
	<div class="btn-group">
	  <button style="background-color:#04406c; border: none;  " type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Order
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalOrderRegister.jsp">New Order</a>
	    <a class="dropdown-item" href="SPsearchCustomer.jsp">Search Order</a>
	    <a class="dropdown-item" href="#"></a>
	    
	  
	  </div>
	</div>
	
	<div class="btn-group">
	  <button style="background-color:#04406c; border: none;"  type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Payment
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="PersonalCustomerPayment.jsp">Get Remaining</a>
	  
	  </div>
	</div>
	
<h4 style="color:black; text-align : center;  text-align : center;" id = "updatecus"><strong> DELETE PERSONAL CUSTOMER </strong></h4>
	  	 		
<div class = "wrapper2"	>
	<div class="maincontainer">
		
	<form action = "delete" method = "post">
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Customer ID</strong></label>
		      <input type="text" name = "cusID" class="form-control" id="inputEmail4" value = "<%=id %>" readonly>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputPassword4"><strong>Name</strong></label>
		      <input type="text" name = "name" class="form-control" id="inputPassword4" value = "<%=name%>"  required>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputAddress"><strong>NIC</strong></label>
		    <input type="text" name = "nic" class="form-control" id="inputAddress"  value = "<%=nic%>">
		  </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>Address</strong></label>
		    <input type="text" name = "address" class="form-control" id="inputAddress"  value = "<%=address%>">
		  </div>
		  
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>City</strong></label>
		      <input type="text" name = "city" class="form-control" id="inputEmail4" value = "<%=city%>" required>
		    </div>
		 </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>Street</strong></label>
		    <input type="text" name = "street" class="form-control" id="inputAddress" value = "<%=street%>" >
		  </div>
	
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Phone</strong></label>
		      <input type="text" name = "phone" class="form-control" id="inputEmail4" value = "<%=phone%>" required>
		    </div>
		 </div>
		
		
		    </div>
		
		 
		  <button style="background-color:red;  margin-left : 300px; margin-bottom : 40px; " type="submit" class="btn btn-primary">Delete Customer</button>
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