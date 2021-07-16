<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	
	 
	 
<div class = "main2">
	  	<h4 style="color:#04406c; text-align : center; padding-bottom : 20px; text-align : center;" id = "updatecus"><strong> UPDATE PERSONAL ORDER </strong></h4>
	  	 
		  
		 <table  style = "width : 70% ; margin-left : 120px; background-color:white;">
		  	<c:forEach var = "ord" items= "${orderDetails}">
		  
			<c:set var = "oid" value = "${ord.orderID}"/>
		  	<c:set var = "dueDate" value = "${ord.dueDate}"/>
		  	<c:set var = "amountPaid" value = "${ord.amountPaid}"/>
		  	<c:set var = "creditPeriod" value = "${ord.creditPeriod}"/>
		  	<c:set var = "unitPrice" value = "${ord.unitPrice}"/>
		  	<c:set var = "status" value = "${ord.status}"/>
		  	<c:set var = "orderDate" value = "${ord.orderDate}"/>
		  	<c:set var = "cusID" value = "${ord.cusID}"/>
		  		
		  
		  
			  <tr>
			  	<td>Order Id</td>
			  	<td>${ord.orderID}</td>
			  </tr>
			  
			  <tr>
			  	<td>Due Date</td>
			  	<td>${ord.dueDate}</td>
			  </tr>
			  
			  
			  <tr>
			  	<td>Paid Amount</td>
			  	<td>${ord.amountPaid}</td>
			  </tr>
			  
			   <tr>
			  	<td>Credit Period</td>
			  	<td>${ord.creditPeriod}</td>
			  </tr>
			  
			   <tr>
			  	<td>Unit Price</td>
			  	<td>${ord.unitPrice}</td>
			  </tr>
			  
			  <tr>
			  	<td>Status</td>
			  	<td>${ord.status}</td>
			  </tr>
			  
			   <tr>
			  	<td>Order Date</td>
			  	<td>${ord.orderDate}</td>
			  </tr>
			  
			   <tr>
			  	<td>Customer Id</td>
			  	<td>${ord.cusID}</td>
			  </tr>
			 
			</c:forEach>
			 
		</table>
 	<c:url value ="personalOrderUpdate.jsp" var = "orderupdate">
 		<c:param name = "oid" value = "${oid}"/>
 		<c:param name = "dueDate" value = "${dueDate}"/>
 		<c:param name = "amountPaid" value = "${amountPaid}"/>
 		<c:param name = "creditPeriod" value = "${creditPeriod}"/>
 		<c:param name = "unitPrice" value = "${unitPrice}"/>
 		<c:param name = "status" value = "${status}"/>
 		<c:param name = "orderDate" value = "${orderDate}"/>
 		<c:param name = "cusID" value = "${cusID}"/>
 	
 	</c:url>
 
 	<div style = "margin-right: 20px; "class= "cusbtn" id="dltbtn2">
		<a href = "${orderupdate}">
		 	<button style="background-color:#04406c; "type="submit" name = "update" class="btn btn-primary" >Update</button>
		</a>
	</div>
	
	<c:url value ="PersonalOrderDelete.jsp" var = "cusdelete">
 		<c:param name = "oid" value = "${oid}"></c:param>
 		<c:param name = "dueDate" value = "${dueDate}"></c:param>
 		<c:param name = "amountPaid" value = "${amountPaid}"></c:param>
 		<c:param name = "creditPeriod" value = "${creditPeriod}"></c:param>
 		<c:param name = "unitPrice" value = "${unitPrice}"></c:param>
 		<c:param name = "status" value = "${status}"></c:param>
 		<c:param name = "orderDate" value = "${orderDate}"></c:param>
 		<c:param name = "cusID" value = "${cusID}"></c:param>
 	
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
			
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 	
	
	
 
	
</body>
</html>