<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <%@ taglib prefix="shop" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Shop</title>
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
  				<li>Shop Catering</li>
			</ul> 
		</div>	
			
	
			
			
		<!-- Current month's due order details -->	
			
		<h1>Shop Catering</h1>

	<div class="row">
		<div class="column" >

	
	
	<form method = "post" style=";margin:1% auto auto 10%;" >
		<div class="header2"><h2>This month Due orders</h2></div>
		<br>
		
		<table id ="table" class="ordertable"  style="font-style: bold; width:90%" >
			
			<tr>
				<th>Shop ID</th>
				<th>Order ID</th>
				<th>Remaining Amount(Rs.)</th>
				<th>Due Date</th>
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
					<td><input type="text" class="inputbox3" name="orderID" value="${order.shopID}" readonly></td>
					<td><input type="text" class="inputbox3" name="orderID" value="${order.orderID}" readonly></td>
					<td><input type="text" class="inputbox3" name="remainingCost" value="${order.remainingCost}" readonly></td>
					<td><input type="text" class="inputbox3" name="dueDate" value="${order.dueDate}" readonly></td>
					
					
					
					
						
					
				</tr>
			
			</shop:forEach>
			</table>
	</form>
		</div>
		<br>


	<div class="column" >
		<center>
		  	<form method = "post" style="margin:-6% 10% auto auto;  " action = "shopCateringHandler" >
			
				<div class="shopform" style="margin:0% 10% none auto; border-radius:25px;background:#FFF5E1;border:none;">	
				
				<table class="btnTable" >
				<tr><td>
				<button class="btn4" type="submit"  value="AddNewShop" name="AddNewShop" >Add New Shop</button> 
				</td>
				
				<td>
				<button class="btn4" type="submit"  value="ShopDetails" name="ShopDetails" >Shop Details</button> 
				</td></tr>
				
				<tr><td>
				<button class="btn4" type="submit"  value="newOrder" name="newOrder" >New Order</button> 
				</td>
				
				<td>
				<button class="btn4" type="submit"  value="Orders" name="Orders" >Update Orders</button> 
				</td></tr>
				</table>
				
				</div>
			</form> 
			</center>
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
			
	</div><!-- wrapper -->	

</body>
</html>