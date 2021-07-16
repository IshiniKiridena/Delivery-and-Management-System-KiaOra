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
  
<title>Confirm Order</title>
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
  				<li><a href="http://localhost:8090/KiaOra/searchModel">Add Order</a></li>
  				<li>Confirm Order</li>
			</ul> 
		</div>	
			
		
		
		<!-- Confirm Order -->
	
		<center>
			
		
		<form method = "post" action = "confirmShopOrder" id ="formSubmit">
				<div class="shopform">
				<br>
				<h1>Confirm Order</h1>
				<br>
				<div name= "errorMsg" class = "errorMsg" align = "center">${errorMsg} </div>
				<br>
				<br>
				<table class="detailsTable">
				
					<tr>
					<td><label >Shop ID </label></td>
					<td>
					<input type="text" class="input-box"  name="shopID" value="<%= request.getAttribute("shopID")%>" readonly>
					</td>
					</tr>
				
					<tr>
					<td><label >Item Name </label></td>
					<td>
					<input type="text" class="input-box"  name="mid" value="<%= request.getAttribute("modelID")%>" readonly>
					</td>
					</tr>
					
					<tr>
					<td><label >Unit Price(Rs.)</label></td>
					<td>
					<input type="text" class="input-box"  name="unitPrice"  value="<%= request.getAttribute("unitPrice")%>" readonly>
					</td>
					</tr>
					
					<tr>
					<td><label >Quantity</label></td>
					<td>
					<input type="text" class="input-box"  name="quantity"  value="<%= request.getAttribute("OrderingQuantity")%>" readonly>
					</td>
					</tr>					
					
					<tr>
					<td><label >Credit Period</label></td>
					<td>
					<input type="text" class="input-box"  name="creditPeriod" value="<%= request.getAttribute("creditPeriod")%>" readonly>	
					</td>
					</tr>
					
					<tr>
					<td><label >Total Price(Rs.) </label></td>
					<td>
					<input type="text" class="input-box"  name="totPrice" value="<%= request.getAttribute("totPrice")%>" readonly>		
					</td>
					</tr>
					
					<tr>
					<td><label >Date </label></td>
					<td>
					<input type="text" class="input-box"  name="date" value="<%= request.getAttribute("date")%>" readonly>		
					</td>
					</tr>
					
					
				</table>
					
					<br>
					<br>
					
					
				<table class="EnterdetailsTable">
				
					<tr>
					<td style="width:50%"><label >Amount Paid(Rs.)</label></td>
					<td style="padding-left:30px;">
					<input type="text" class="input-box" placeholder="00.00" name="paidAmount" id="paidAmount" required>		
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					<div class="error-box" id = "paidAmount_error" ></div>
					</td>
					</tr>
				
				
				</table>
			
			
				<button class="btn1" type="submit"  value="<%= request.getAttribute("Button")%>" name="Button" ><%= request.getAttribute("Button")%></button> 
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

	         $("#paidAmount_error").hide();
	         
	         var error_paidAmount = false;
	         
	         $("#paidAmount").focusout(function(){
	             check_paidAmount();
	          });
	         
	         
	         function check_paidAmount() {
	             var pattern = /^[1-9][0-9]\d*$/;
	             var paidAmount = $("#paidAmount").val();
	             if (pattern.test(paidAmount) && paidAmount !== '') {
	                $("#paidAmount_error").hide();
	                $("#paidAmount").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#paidAmount_error").html("Please enter a valid Price");
	                $("#paidAmount_error").show();
	                $("#paidAmount").css("border-bottom","2px solid #F90A0A");
	                error_paidAmount = true;
	             }
	          }
	         
	         
	         $("#formSubmit").submit(function() {
	        	 
	        	 error_paidAmount = false;
	        	 
	        	 check_paidAmount();
	        	 
	        	 if (error_paidAmount === false ) {
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