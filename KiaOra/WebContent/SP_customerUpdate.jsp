<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Personal Customer Update</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel = "stylesheet" href = "Styles/PersonalCustomerAndOrder.css"/>
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
		  <button style="background-color:#04406c; border : none;" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Customer
		  </button>
		  <div class="dropdown-menu">
		    <a class="dropdown-item" href="mainMenu.jsp">Customer Registration</a>
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
	  <button style="background-color:#04406c; border : none;"  type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Payment
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalInstallment.jsp">Installment</a>
	  
	  </div>
	</div>
	
<h4 style="color:#04406c; text-align : center; " id = "updatecus"><strong>PERSONAL CUSTOMER  UPDATE</strong></h4>	
	<div class = "main5"	>
		<div class="maincontainer">
			
		<form action = "update" method = "post">
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Customer ID</strong></label>
		      <input style="border-color:  #fcb45c;" type="text" name = "cusID" class="form-control" id="inputEmail4" value = "<%=id %>" readonly>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputPassword4"><strong>Name</strong></label>
		      <input style="border-color:  #fcb45c;" type="text" name = "name" class="form-control" id="inputPassword4" value = "<%=name %>"  required>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inp s"><strong>NIC</strong></label>
		    <input style="border-color:  #fcb45c;"type="text" name = "nic" class="form-control" id="inputAddress"  value = "<%=nic%>">
		  </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>Address</strong></label>
		    <input style="border-color:  #fcb45c;" type="text" name = "address" class="form-control" id="inputAddress"  value = "<%=address%>">
		  </div>
		  
		   <div class="form-group">
		    <label for="inputAddress"><strong>Street</strong></label>
		    <input style="border-color:  #fcb45c;"type="text" name = "street" class="form-control" id="inputAddress" value = "<%=street%>" >
		  </div>
	
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>City</strong></label>
		      <input style="border-color:  #fcb45c;" type="text" name = "city" class="form-control" id="inputEmail4" value = "<%=city%>" required>
		    </div>
		    
		     <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4"><strong>Phone</strong></label>
		      <input style="border-color:  #fcb45c; width : 120px;" type="text" name = "phone" class="form-control" id="inputEmail4" value = "<%=phone%>" required>
		    </div>
		 
			<br>
			
		    </div>
		 </div>
		 
		  <button style="background-color:#04406c; margin-top : 10px; margin-left : 130px;   margin-bottom: 30px; "  type="submit" class="btn btn-primary">Update</button>
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