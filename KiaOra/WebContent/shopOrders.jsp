<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="shop" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Shop Orders</title>
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
  				<li><a href="http://localhost:8090/KiaOra/adminAccount.jsp">Account</a></li>
  				<li><a href="shopHomeServlet">Shop Catering</a></li>
  				<li><a href="http://localhost:8090/KiaOra/shopNewOrderSearch.jsp">Search Model</a></li>
  				<li><a href="http://localhost:8090/KiaOra/shopOrders.jsp">Add Order</a></li>
  				<li>Shop Order Details</li>
			</ul> 
		</div>	
			
		
		
		<!-- Selected Shop's order details will be shown here -->
	
		<br>
		<br>
		
		<center>
			
		<h1><%= request.getAttribute("shopID")%> - Orders</h1>
		<br>
		<div name= "credential_error" class = "credential_error" align = "center">${msg} </div>
		<div name= "successfulMsg" class = "successfulMsg" align = "center">${successfulMsg} </div>		
		
		<br>
		<br>
		
		
		<form method = "post" action = "updateAndDeleteOrders">
		
			
		
		
			<table id ="table" class="ordertable" align="Center">
			
			<tr>
				<th>Order ID</th>
				<th>Item Name</th>
				<th>Quantity</th>
				<th>Total Amount(Rs.)</th>
				<th>Remaining Amount(Rs.)</th>
				<th>Ordered Date</th>
				<th>Due Date</th>
				<th>Status</th>
			</tr>
			
			
			
			<shop:forEach var="order" items="${oDetails}">
					<shop:set var="orderID" value ="${order.orderID}"/>	
					<shop:set var="modelID" value ="${order.modelID}" />	
					<shop:set var="quantity" value ="${order.quantity}"/>
					<shop:set var="totPayment" value ="${order.totPayment}" />
					<shop:set var="remainingCost" value ="${order.remainingCost}" />			
					<shop:set var="orderDate" value ="${order.orderDate}" />
					<shop:set var="status" value ="${order.status}" />
					
					<input type="hidden"  class="inputbox3" name="shopID" value="${order.shopID}" >
			
				<tr>
					<td><input type="text" class="inputbox3" name="orderID" value="${order.orderID}" readonly></td>
					<td><input type="text" class="inputbox3" name="modelID" value="${order.modelID}" readonly></td>
					<td><input type="text" class="inputbox3" name="quantity" value="${order.quantity}" readonly></td>
					<td><input type="text" class="inputbox3" name="totPayment" value="${order.totPayment}" readonly></td>
					<td><input type="text" class="inputbox3" name="remainingCost" value="${order.remainingCost}" readonly></td>
					<td><input type="text" class="inputbox3" name="orderDate" value="${order.orderDate}" readonly></td>
					<td><input type="text" class="inputbox3" name="dueDate" value="${order.dueDate}" readonly></td>
					
					
					<td>
					<shop:choose>
					    <shop:when test="${order.status.equals('Paid')}">
						
							<input type="text" class="inputbox3" name="status" value="${order.status}" readonly>
						
						</shop:when> 
					   
		 			    <shop:otherwise>
		 			    
		 			    		<!-- Pass values for update -->
								<shop:url value ="shopUpdateOrder.jsp" var="updateOrder">
									<shop:param  name="shopID" value ="${shopID}"/>
									<shop:param  name="orderID" value ="${orderID}"/>	
									<shop:param  name="modelID" value ="${modelID}" />	
									<shop:param  name="quantity" value ="${quantity}"/>
									<shop:param  name="totPayment" value ="${totPayment}" />
									<shop:param  name="remainingCost" value ="${remainingCost}" />			
									<shop:param  name="orderDate" value ="${orderDate}" />
									<shop:param  name="dueDate" value ="${dueDate}" />
									<shop:param  name="status" value ="${status}" />
							
									</shop:url>	
		 			    
							<center>
							<!-- Pass assign values to update -->
							<a href="${updateOrder}">
							<button  class="btn1" type="submit" id="book" value="${orderID}" name="update"  >Update</button> 
							</a>
							</center>
						</shop:otherwise>
					</shop:choose>
					
					
					</td>
					
						
					
				</tr>
			
			</shop:forEach>
			
			</table>
			
			<br>
				
	
			<br>
			<br>
	
			<button class="btn3" type="submit"  value="${order.shopID}" name="deleteOrders" >Delete completed Orders</button> 
			
			<br>
			<br>
	</form>
				
				
				
				
		
		</center>
	
		
			
			
			
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