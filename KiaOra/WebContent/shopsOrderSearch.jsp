<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  
<title>Order Details</title>
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
  				<li>Order Details</li>
			</ul> 
		</div>	
			
		
		
		<!-- Search Model to place a new order -->
	
		<center>
			
		
		<form method = "post" id ="formSubmit" action = "searchShopOrders" style="margin-bottom:11%;margin-top:10%;">
		
			<div class="shopform">	
			
				<h1>Search Shop's Orders</h1>
				<br>
				
				<div name= "credential_error" class = "credential_error" align = "center">${credential_error} </div>
				<br>
				
				<input type = "text"  class="inputbox2"  style="width:40%;" placeholder="Enter Shop ID"   name="shopID" id="shopID" required>
				
				<button type="submit" class="btn1"  id="submitbtn" value="Submit"  name="submit" >Search</button>
				
				<table>
				<tr><td>
				<div class="error-box" id = "ShopID_error" ></div>
				</td></tr>
				</table>
				<br>
				<br>
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

	         $("#ShopID_error").hide();
	         
	         var error_shopID = false;
	         
	         $("#shopID").focusout(function(){
	             check_shopID();
	          });
	         
	         
	         function check_shopID() {
	             var pattern = /[S][H][0-9]{3}/;
	             var shopID = $("#shopID").val();
	             if (pattern.test(shopID) && shopID !== '') {
	                $("#ShopID_error").hide();
	                $("#shopID").css("border-bottom","2px solid #34F458");
	             } else {
	                $("#ShopID_error").html("Enter a Correct ShopID");
	                $("#ShopID_error").show();
	                $("#shopID").css("border-bottom","2px solid #F90A0A");
	                error_shopID = true;
	             }
	          }
	         
	         
	         $("#formSubmit").submit(function() {
	        	 
	        	 error_shopID = false;
	        	 
	        	 check_shopID();
	        	 
	        	 if (error_shopID === false ) {
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