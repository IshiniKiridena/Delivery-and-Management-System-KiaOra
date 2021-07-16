<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		  <button style="background-color:#04406c; border : none; type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
	  <button style="background-color:#04406c; border : none; " type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Payment
	  </button>
	  <div class="dropdown-menu">
	    <a class="dropdown-item" href="personalInstallment.jsp">Installment</a>
	  
	  </div>
	</div>
	

	<div class = "main2">
	  	<h4 style="color:#04406c; text-align : center; padding-bottom : 20px;" id = "updatecus"><strong>PERSONAL CUSTOMER UPDATE</strong></h4>

	
	  <table style = "width : 70% ; margin-left : 120px; background-color:white;" >
		  <c:forEach var = "cus" items= "${cusDetails}">
		  
		  	<c:set var = "id" value = "${cus.cusId}"/>
		  	<c:set var = "name" value = "${cus.name}"/>
		  	<c:set var = "nic" value = "${cus.nic}"/>
		  	<c:set var = "address" value = "${cus.addressLine}"/>
		  	<c:set var = "street" value = "${cus.street}"/>
		  	<c:set var = "city" value = "${cus.city}"/>
		  	<c:set var = "phone" value = "${cus.phoneNo}"/>
		  
	  <tr>
	  	<td>Customer ID</td>
	  	<td>${cus.cusId}</td>
	  </tr>
	  
	  <tr>
	  	<td>Full Name</td>
	  	<td>${cus.name}</td>
	  </tr>
	  
	   <tr>
	  	<td>NIC</td>
	  	<td>${cus.nic}</td>
	  </tr>
	  
	   <tr>
	  	<td>AddressLine</td>
	  	<td>${cus.addressLine}</td>
	  </tr>
	  
	  <tr>
	  	<td>Street</td>
	  	<td>${cus.street}</td>
	  </tr>
	  
	   <tr>
	  	<td>City</td>
	  	<td>${cus.city}</td>
	  </tr>
	  
	   <tr>
	  	<td>Phone</td>
	  	<td>${cus.phoneNo}</td>
	  </tr>
	 
 </c:forEach>
 
 </table>


 	<c:url value ="SP_customerUpdate.jsp" var = "cusupdate">
 		<c:param name = "id" value = "${id}"/>
 		<c:param name = "name" value = "${name}"/>
 		<c:param name = "nic" value = "${nic}"/>
 		<c:param name = "address" value = "${address}"/>
 		<c:param name = "street" value = "${street}"/>
 		<c:param name = "city" value = "${city}"/>
 		<c:param name = "phone" value = "${phone}"/>
 	
 	</c:url>
 	
 	<div style = "margin-right: 20px; " class= "cusbtn" id="dltbtn2">
	<a href = "${cusupdate}">
	 	  <button style="background-color:#000f89; "type="submit" name = "update" class="btn btn-primary" >Update</button>
	</a>
	</div>
	
	<c:url value ="SP_deleteCustomer.jsp" var = "cusdelete">
 		<c:param name = "id" value = "${id}"></c:param>
 		<c:param name = "name" value = "${name}"></c:param>
 		<c:param name = "nic" value = "${nic}"></c:param>
 		<c:param name = "address" value = "${address}"></c:param>
 		<c:param name = "street" value = "${street}"></c:param>
 		<c:param name = "city" value = "${city}"></c:param>
 		<c:param name = "phone" value = "${phone}"></c:param>
 	
 	</c:url>
	
	<div style = "margin-right: 120px;" class= "cusbtn" id="dltbtn">
	<a href = "${cusdelete}">
	 	  <button style="background-color:red;" type="submit" name = "delete" class="btn btn-primary" >Delete</button>
	</a>
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
