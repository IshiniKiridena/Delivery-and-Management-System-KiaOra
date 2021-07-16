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

<title>Register Shop</title>
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
  				<li>Add New Shop</li>
			</ul> 
		</div>	
			
			

<!-- Form to add new shop -->

		
		<center>
			
		
		<form method = "post" id="registration_form" action = "addNewShop" >
				<div class="shopform">
				<br>
				<h1>Register New Shop</h1>
				<br>
				
				<div name= "errorMsg" class = "errorMsg" align = "center">${errorMsg} </div>
				<br>
				
				<table >
				
				
				<tr>
				<td><label >Shop Name *</label></td>
				<td>
				<input type = "text"  class="input-box" placeholder="Shop Name"  name="shopName" id="shopName" required> 
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "Shopname_error" ></div>
				</td>
				</tr>
			
				<tr>
				<td><label >Owner's Name *</label></td>
				<td>
				<input type = "text"  class="input-box"  placeholder="Owner's Name"  name="ownerName" id="ownerName" required> 
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
				<input type = "text"  class="input-box" placeholder="Line 1"  name="shopAddress" id="shopAddress" required> 
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
				<!--<input type = "text"  class="input-box"  placeholder="Street"   name="shopStreet" id="shopStreet" required> -->
				<select class="dropdownStyle" name="shopStreet" id="shopStreet" required>
				<option value="" >Street</option>
           		 <shop:forEach items="${streetList}" var="streetList">
              	  <option  value="${streetList.name}">${streetList.name}</option>                 
           		 </shop:forEach>
      		 	</select>
				</td>
				</tr>
				<br>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopStreet_error" ></div>
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td>
				<input type ="text"   class="input-box" placeholder="City"  name="shopCity" id="shopCity" required> 
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopCity_error" ></div>
				</td>
				</tr>
			
				<tr>
				<td><label >Phone *</label></td>
				<td>
				<input type="text"  class="input-box"  name="phone" placeholder="7********" pattern="[7-9][0-9]{8}" name="shopPhone" id="shopPhone" required>
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopPhone_error" ></div>
				</td>
				</tr>
				
				<tr>
				<td><label >Email *</label></td>
				<td><input type="text"  class="input-box"  name="email"  placeholder="abc@gmail.com" id="shopEmail1" required>	
				</td>
				</tr>
				
				<tr>
				<td></td>
				<td >
				<div class="error-box" id = "shopEmail1_error" ></div>
				</td>
				</tr>
			
				</table>
				
					<br>
				
				<button type="submit" class="btn1"  id="submitbtn" value="Submit"  name="submit"  >Submit</button>
				<br>
				<br>
			
			</div>
			</form>	
			
			</center>
	
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
			<!-- wrapper -->

	<!-- Form Validation -->
  	<script type="text/javascript">
		
		$(function() {

	         $("#Shopname_error").hide();
	         $("#Ownername_error").hide();
	         $("#shopAddress_error").hide();
	         $("#shopStreet_error").hide();
	         $("#shopCity_error").hide();
	         $("#shopPhone_error").hide();
	         $("#shopEmail1_error").hide();
	         
	         var error_sname = false;
	         var error_ownerName = false;
	         var error_shopAddress = false;
	         var error_shopStreet = false;
	         var error_shopCity = false;
	         var error_shopPhone = false;
	         var error_shopEmail1 = false;
	         
	         $("#shopName").focusout(function(){
	             check_sname();
	          });
	         
	         $("#ownerName").focusout(function(){
	             check_ownerName();
	          });
	         
	         $("#shopAddress").focusout(function(){
	             check_shopAddress();
	          });
		
	         $("#shopStreet").focusout(function(){
	             check_shopStreet();
	          });
	         
	         $("#shopCity").focusout(function(){
	             check_shopCity();
	          });
	         
	         $("#shopPhone").focusout(function(){
	             check_shopPhone();
	          });
	         
	         $("#shopEmail1").focusout(function(){
	             check_shopEmail1();
	          });
	         
	         function check_sname() {
	             //var pattern = /^[a-zA-Z]*$/;
	             var pattern = /^[A-Za-z (),.-]*$/;
	             var sname = $("#shopName").val();
	             if (pattern.test(sname) && sname !== '') {
	                $("#Shopname_error").hide();
	                $("#shopName").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#Shopname_error").html("Please Enter a valid Name");
	                $("#Shopname_error").show();
	                $("#shopName").css("border-bottom","2px solid #F90A0A");
	                error_sname = true;
	             }
	          }
	         
	         
	         function check_ownerName() {
	             //var pattern = /^[a-zA-Z.]*$/;
	             var pattern = /^[a-zA-Z]+(([,. ][a-zA-Z ])?[a-zA-Z]*)*$/;
	             var ownerName = $("#ownerName").val();
	             if (pattern.test(ownerName) && ownerName !== '') {
	                $("#Ownername_error").hide();
	                $("#ownerName").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#Ownername_error").html("Please Enter a valid Name");
	                $("#Ownername_error").show();
	                $("#ownerName").css("border-bottom","2px solid #F90A0A");
	                error_ownerName = true;
	             }
	          }
	         
	         function check_shopAddress() {
	             //var pattern = /^[a-zA-Z0-9,/]*$/;
	             var pattern = /^[a-zA-Z0-9]+(([,-/][a-zA-Z0-9 ])?[a-zA-Z]*)*$/;
	             var shopAddress = $("#shopAddress").val();
	             if (pattern.test(shopAddress) && shopAddress !== '') {
	                $("#shopAddress_error").hide();
	                $("#shopAddress").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopAddress_error").html("Please Enter a valid Address");
	                $("#shopAddress_error").show();
	                $("#shopAddress").css("border-bottom","2px solid #F90A0A");
	                error_shopAddress = true;
	             }
	          }
	         
	         function check_shopStreet() {
	             var pattern = /^[a-zA-Z]*$/;
	             var shopStreet = $("#shopStreet").val();
	             if(shopStreet.contains("Street")){
   					$("#shopStreet").val().replace("Street", "");
   					$("#shopStreet_error").html("choose a street");
	                $("#shopStreet_error").show();
	                $("#shopStreet").css("border-bottom","2px solid #F90A0A");
	                error_shopStreet = true;
   				 }
	          }
	         
	         function check_shopCity() {
	             var pattern = /^[a-zA-Z]*$/;
	             var shopCity = $("#shopCity").val();
	             if (pattern.test(shopCity) && shopCity !== '') {
	                $("#shopCity_error").hide();
	                $("#shopCity").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopCity_error").html("Should contain only Characters");
	                $("#shopCity_error").show();
	                $("#shopCity").css("border-bottom","2px solid #F90A0A");
	                error_shopCity = true;
	             }
	          }
	         
	         function check_shopPhone() {
	        	 var pattern = /^[7-9][0-9]{8}$/;
	             var shopPhone = $("#shopPhone").val();
	             if (pattern.test(shopPhone) && shopPhone !== '') {
	                $("#shopPhone_error").hide();
	                $("#shopPhone").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopPhone_error").html("Please enter a valid phone number");
	                $("#shopPhone_error").show();
	                $("#shopPhone").css("border-bottom","2px solid #F90A0A");
	                error_shopPhone = true;
	             }
	          }
	         
	         function check_shopEmail1() {
	             var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	             var shopEmail1 = $("#shopEmail1").val();
	             if (pattern.test(shopEmail1) && shopEmail1 !== '') {
	                $("#shopEmail1_error").hide();
	                $("#shopEmail1").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#shopEmail1_error").html("Please enter a valid E-mail address");
	                $("#shopEmail1_error").show();
	                $("#shopEmail1").css("border-bottom","2px solid #F90A0A");
	                shopEmail1 = true;
	             }
	          }
	         
	         $("#registration_form").submit(function() {
	        	 
	        	 error_sname = false;
	        	 error_ownerName  = false;
	        	 error_shopAddress = false;
	        	 error_shopStreet = false;
		         error_shopCity = false;
		         error_shopPhone = false;
		         error_shopEmail1 = false;
	        	 
	        	 check_sname();
	        	 check_ownerName ();
	        	 check_shopAddress();
	        	 check_shopStreet();
	        	 check_shopCity();
	        	 check_shopPhone();
	        	 check_shopEmail1();
	        	 
	        	 if (error_sname === false && error_ownerName  === false && error_shopAddress === false && error_shopStreet === false && error_shopCity === false && error_shopPhone === false && error_shopEmail1 === false ) {
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