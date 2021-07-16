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
<title>Update Shop Details</title>
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
  				<li><a href="http://localhost:8090/KiaOra/shopSearch.jsp">Search Shop</a></li>
  				<li><a href="http://localhost:8090/KiaOra/searchShop">Shop Profile</a></li>
  				<li>Update Shop</li>
			</ul> 
		</div>	
			
		


	<%
	//get values which came from the url
	String id = request.getParameter("id");
	String shopname = request.getParameter("shopname");
	String ownername = request.getParameter("ownername");
	String addressLine1 = request.getParameter("addressLine1");
	String addressStreet = request.getParameter("addressStreet");
	String addressCity = request.getParameter("addressCity");
	String email = request.getParameter("email");
	String phone= request.getParameter("phone");
	String registeredDate = request.getParameter("registeredDate");
	
	%>

<!-- Update shop -->

	<form method = "post" action="updateShop">
		<div class="shopform">
		
		<h1>Update Shop</h1>
		
			<br>
			<center><div name= "credential_error" id="credential_error" class = "credential_error" >${credential_error} </div></center>
			<br>
		
		<center>	
		
			<table >
				<tr>
				<td><label >Shop ID:</label></td>
				<td>
				<input type="text" class="input-box"  name="id1" value="<%= id%>" readonly>
				</td>
				</tr>
				
				<tr>
				<td><label >Shop Name :</label></td>
				<td>
					<input type="text" class="input-box" placeholder="Shop Name" id="shopname1" name="shopname1" value="<%= shopname%>"  required>
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "Shopname_error" ></div>
				</td>
				</tr>
				
				<tr>
				<td><label >Owner's name:</label></td>
				<td>
				<input type="text" class="input-box" placeholder="Owner's Name" id="ownername1" name="ownername1" value="<%= ownername%>"  required>
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "Ownername_error" ></div>
				</td>
				</tr>
				
				
					<tr>
					<td><label >Address *</label></td>
					<td>
					<input type = "text" class="input-box" placeholder="Line 1" id="addressLine11" name="addressLine11" value="<%= addressLine1%>"  required> 
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td >
					<div class="error-box" id = "shopAddress_error" ></div>
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					
					<select class="dropdownStyle" id="addressStreet1" name="addressStreet1" >
						<option value="<%= addressStreet%>" ><%= addressStreet%></option>
           				 <shop:forEach items="${streetList}" var="streetList">
              	 		 <option  value="${streetList.name}">${streetList.name}</option>
                 
           				 </shop:forEach>
        				</select>
					
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td>
					<input type ="text" class="input-box"  placeholder="City" id="addressCity1" name="addressCity1" value="<%= addressCity%>"  required> 
					</td>
					</tr>
					
					<tr>
					<td></td>
					<td >
					<div class="error-box" id = "shopCity_error" ></div>
					</td>
					</tr>
					
				<tr>
				<td><label >E-mail:</label></td>
				<td>
				<input type="text" class="input-box"  placeholder="abc@gmail.com" id="email1" name="email1" value="<%= email%>"  required>	
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopEmail1_error" ></div>
				</td>
				</tr>
			
				<tr>
				<td><label >Phone:</label></td>
				<td>
				<input type="text" class="input-box" placeholder="7********" id="phone1" name="phone1" value="<%= phone%>"  required>		
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopPhone_error" ></div>
				</td>
				</tr>
				
				<tr>
				<td><label >Registered Date:</label></td>
				<td>
				<input type="text" class="input-box"  name="registeredDate1" value="<%= registeredDate%>"  readonly>		
				</td>
				</tr>
			</table>
	
			<br>	
			<button class="btn1" type="submit"  value="update shop data" name="Update" >Update</button> 
	
		</center>	
				
		</div>
	</form>
		
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


<script type="text/javascript">
		
		$(function() {

	         $("#Shopname_error").hide();
	         $("#Ownername_error").hide();
	         $("#shopAddress_error").hide();
	         $("#shopCity_error").hide();
	         $("#shopPhone_error").hide();
	         $("#shopEmail1_error").hide();
	         
	         var error_sname = false;
	         var error_ownerName = false;
	         var error_shopAddress = false;
	         var error_shopCity = false;
	         var error_shopPhone = false;
	         var error_shopEmail1 = false;
	         
	         $("#shopname1").focusout(function(){
	             check_sname();
	          });
	         
	         $("#ownername1").focusout(function(){
	             check_ownerName();
	          });
	         
	         $("#addressLine11").focusout(function(){
	             check_shopAddress();
	          });

	         
	         $("#addressCity1").focusout(function(){
	             check_shopCity();
	          });
	         
	         $("#phone1").focusout(function(){
	             check_shopPhone();
	          });
	         
	         $("#email1").focusout(function(){
	             check_shopEmail1();
	          });
	         
	         function check_sname() {
	             //var pattern = /^[a-zA-Z]*$/;
	             var pattern = /^[A-Za-z (),.-]*$/;
	             var sname = $("#shopname1").val();
	             if (pattern.test(sname) && sname !== '') {
	                $("#Shopname_error").hide();
	                $("#shopname1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#Shopname_error").html("Should contain only Characters");
	                $("#Shopname_error").show();
	                $("#shopname1").css("border-bottom","2px solid #F90A0A");
	                error_sname = true;
	             }
	          }
	         
	         
	         function check_ownerName() {
	           //  var pattern = /^[a-zA-Z.]*$/; 
	          	 var pattern = /^[a-zA-Z]+(([,. ][a-zA-Z ])?[a-zA-Z]*)*$/; 
	             var ownerName = $("#ownername1").val();
	             if (pattern.test(ownerName) && ownerName !== '') {
	                $("#Ownername_error").hide();
	                $("#ownername1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#Ownername_error").html("Should contain only Characters");
	                $("#Ownername_error").show();
	                $("#ownername1").css("border-bottom","2px solid #F90A0A");
	                error_ownerName = true;
	             }
	          }
	         
	         function check_shopAddress() {
	             //var pattern = /^[a-zA-Z0-9,/]*$/; 
	             var pattern = /^[a-zA-Z0-9]+(([,-/][a-zA-Z0-9 ])?[a-zA-Z]*)*$/;
	             var shopAddress = $("#addressLine11").val();
	             if (pattern.test(shopAddress) && shopAddress !== '') {
	                $("#shopAddress_error").hide();
	                $("#addressLine11").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopAddress_error").html("Should contain only Characters");
	                $("#shopAddress_error").show();
	                $("#addressLine11").css("border-bottom","2px solid #F90A0A");
	                error_shopAddress = true;
	             }
	          }
	         
	         
	         function check_shopCity() {
	             var pattern = /^[a-zA-Z]*$/;
	             var shopCity = $("#addressCity1").val();
	             if (pattern.test(shopCity) && shopCity !== '') {
	                $("#shopCity_error").hide();
	                $("#addressCity1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopCity_error").html("Should contain only Characters");
	                $("#shopCity_error").show();
	                $("#addressCity1").css("border-bottom","2px solid #F90A0A");
	                error_shopCity = true;
	             }
	          }
	         
	         function check_shopPhone() {
	             var pattern = /^[7-9][0-9]{8}$/;
	             var shopPhone = $("#phone1").val();
	             if (pattern.test(shopPhone) && shopPhone !== '') {
	                $("#shopPhone_error").hide();
	                $("#phone1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopPhone_error").html("Please enter a valid phone number");
	                $("#shopPhone_error").show();
	                $("#phone1").css("border-bottom","2px solid #F90A0A");
	                error_shopPhone = true;
	             }
	          }
	         
	         function check_shopEmail1() {
	             var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	             var shopEmail1 = $("#email1").val();
	             if (pattern.test(shopEmail1) && shopEmail1 !== '') {
	                $("#shopEmail1_error").hide();
	                $("#email1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopEmail1_error").html("Please enter a valid E-mail address");
	                $("#shopEmail1_error").show();
	                $("#email1").css("border-bottom","2px solid #F90A0A");
	                shopEmail1 = true;
	             }
	          }
	         
	         $("#registration_form").submit(function() {
	        	 
	        	 error_sname = false;
	        	 error_ownerName  = false;
	        	 error_shopAddress = false;
		         error_shopCity = false;
		         error_shopPhone = false;
		         error_shopEmail1 = false;
	        	 
	        	 check_sname();
	        	 check_ownerName ();
	        	 check_shopAddress();
	        	 check_shopCity();
	        	 check_shopPhone();
	        	 check_shopEmail1();
	        	 
	        	 if (error_sname === false && error_ownerName  === false && error_shopAddress === false  && error_shopCity === false && error_shopPhone === false && error_shopEmail1 === false ) {
	                 alert("Registration Successfull");
	                 return true;
	              } else {
	                 alert("Please Fill the form Correctly");
	                 return false;
	              }
	         
	         });
	         
		  });
		   </script>	



</body>
</html>