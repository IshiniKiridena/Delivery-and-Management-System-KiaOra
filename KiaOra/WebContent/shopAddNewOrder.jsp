<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	  <%@ taglib prefix="shop" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  
<title>Add New Order</title>
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
  				<li><a href="http://localhost:8090/KiaOra/shopCateringHandler">Search Model</a></li>
  				<li>Add Order</li>
			</ul> 
		</div>	
			
		
		
		<!-- Add New order -->
	
		<center>
			
		
		<form method = "post" action = "addShopOrder" id ="formSubmit" >
				<div class="shopform">
				<br>
				<h1>Add New Order</h1>
				<br>
				<br>
				
				<div name= "errorMsg" class = "errorMsg" align = "center">${errorMsg} </div>
				<br>
				
				<table class="detailsTable">
									
					
					<shop:forEach var="model" items="${mDetails}">
		
					<tr>
					<td><label >Item Name </label></td>
					<td>
					<input type="text" class="input-box2"  name="mid" value="${model.mid}" readonly>
					</td>
					</tr>
					
					<tr>
					<td><label >Brand </label></td>
					<td>
					<input type="text" class="input-box2"  name="brand"  value="${model.brand}" readonly>
					</td>
					</tr>
					
					<tr>
					<td><label >Category</label></td>
					<td>
					<input type="text" class="input-box2"  name="category"  value="${model.category}" readonly>
					</td>
					</tr>					
					
					<tr>
					<td><label >Warranty </label></td>
					<td>
					<input type="text" class="input-box2"  name="warrenty" value="${model.warrenty}" readonly>	
					</td>
					</tr>
					
					<tr>
					<td><label >Remaining Quantity  </label></td>
					<td>
					<input type="text" class="input-box2"  name="quantity" value="${model.quantity}" readonly>	
					</td>
					</tr>
					
					<tr>
					<shop:url value ="shopConfirmOrder.jsp" var="updateOrder">
				
						<shop:param name="mid" value ="${mid}"/>
						<shop:param name="brand" value ="${brand}" />
						<shop:param name="category" value ="${category}" />
						<shop:param name="warrenty" value ="${warrenty}" />
						<shop:param name="quantity" value ="${quantity}" />
						<shop:param name="unitPrice" value ="${unitPrice}" />
						<shop:param name="OrderingQuantity" value ="${OrderingQuantity}" />
					</shop:url>
					
					</tr>
				
					</shop:forEach>
				</table>
					
					<br>
					<br>
					
					<center><div style="color:#0000a0;text-decoration: underline;">Please fill the below fields</div></center>
					
				<table class="EnterdetailsTable">
				
					<tr>
					<td style="width:50%"><label >Shop ID </label></td>
					<td style="padding-left:30px;">
					<input type="text" class="input-box" placeholder="Enter Shop ID" name="shopID" id="shopID" required>		
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					<div class="error-box" id = "shopID_error" ></div>
					</td>
					</tr>
					
					
				
					<tr>
					<td style="width:50%"><label >Unit Price(Rs.) </label></td>
					<td style="padding-left:30px;">
					<input type="text" class="input-box" placeholder="Rs.0.00" name="unitPrice" id="unitPrice" required>		
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					<div class="error-box" id = "unitPrice_error" ></div>
					</td>
					</tr>
					
					
					
					<tr>
					<td><label >Ordering Quantity </label></td>
					<td style="padding-left:30px;">
					<input type="text" class="input-box" placeholder="00" name="OrderingQuantity" id="OrderingQuantity" required>		
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					<div class="error-box" id = "OrderingQuantity_error" ></div>
					</td>
					</tr>
				
				
				
				</table>
			
			
				<button class="btn1" type="submit"  value="addOrder" name="addOrder" >Add Order</button> 
			</div>
			
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
	
	
	<!-- Form Validation -->
	<script type="text/javascript">
		
		$(function() {

	         $("#shopID_error").hide();
	         $("#unitPrice_error").hide();
	         $("#OrderingQuantity_error").hide();
	         
	         var error_shopID = false;
	         var error_unitPrice = false;
	         var error_OrderingQuantity = false;
	         
	         $("#shopID").focusout(function(){
	             check_shopID();
	          });
	         
	         $("#unitPrice").focusout(function(){
	             check_unitPrice();
	          });
	         
	         $("#OrderingQuantity").focusout(function(){
	             check_OrderingQuantity();
	          });
	         
	         
	         function check_shopID() {
	             var pattern = /[S][H][0-9]{3}/;
	             var shopID = $("#shopID").val();
	             if (pattern.test(shopID) && shopID !== '') {
	                $("#shopID_error").hide();
	                $("#shopID").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopID_error").html("Enter a Correct ShopID");
	                $("#shopID_error").show();
	                $("#shopID").css("border-bottom","2px solid #F90A0A");
	                error_shopID = true;
	             }
	          }
	         
	         function check_unitPrice() {
	             var pattern = /^[1-9][0-9]\d*$/;
	             var unitPrice = $("#unitPrice").val();
	             if (pattern.test(unitPrice) && unitPrice !== '') {
	                $("#unitPrice_error").hide();
	                $("#unitPrice").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#unitPrice_error").html("Please enter a valid Price");
	                $("#unitPrice_error").show();
	                $("#unitPrice").css("border-bottom","2px solid #F90A0A");
	                error_unitPrice = true;
	             }
	          }
	         
	         function check_OrderingQuantity() {
	             var pattern = /[1-9]/;
	             var OrderingQuantity = $("#OrderingQuantity").val();
	             if (pattern.test(OrderingQuantity) && OrderingQuantity !== '') {
	                $("#OrderingQuantity_error").hide();
	                $("#OrderingQuantity").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#OrderingQuantity_error").html("Enter a valid Number");
	                $("#OrderingQuantity_error").show();
	                $("#OrderingQuantity").css("border-bottom","2px solid #F90A0A");
	                error_OrderingQuantity = true;
	             }
	          }
	         
	         
	         $("#formSubmit").submit(function() {
	        	 
	        	 error_shopID = false;
	        	 error_unitPrice = false;
	        	 error_OrderingQuantity = false;
	        	 
	        	 check_shopID();
	        	 check_unitPrice();
	        	 check_OrderingQuantity();
	        	 
	        	 if (error_shopID === false && error_unitPrice === false && error_OrderingQuantity === false ) {
	                // alert("Submission is Successfull");
	                 return true;
	              } else {
	                 alert("Please Fill the required fields Correctly");
	                 return false;
	              }
	         
	         });
	         
		  });
		   </script>	
	

</body>
</html>