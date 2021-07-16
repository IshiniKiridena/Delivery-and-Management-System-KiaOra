<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Registration</title>
<link rel = "stylesheet" href = "Styles/PromoFormStyle.css"/>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/parsley.min.js"></script>

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
  				<li><a href="Home_Page.jsp">Home</a></li>
  				 <li><a href="#">Employee Portal</a></li>
  				<li><a href="adminAccount.jsp">Admin Account</a></li>
  				<li><a href="PromoMain.jsp">Promotion</a></li>
  				<li>Add Customer</a></li>
  				
			</ul> 
		</div>

<div class ="form-wrapper">
	
	<fieldset>
		
		<h1>Customer Registration - Promotion</h1>
		
		<div class="form-cd1-wrapper">
			<form id="ProInsertCusForm" action="PromoCustomerServlet" method="post" class="form-cd1" data-parsley-validate="">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Full Name</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="name" type= "text" name="procusname" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>NIC</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="nic" type="text" name ="procusnic" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Telephone</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="contact" type="text" name="procuscontact" required="" data-parsley-type="digits"	>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Address Line</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="address" type="text" name="promoline" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Street</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="street" type="text" name="promostreet" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>City</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="city" type="text" name="promocity" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Company name</label>
				  		</div>
				  		<div class="form-input">
				  			<input id="company_name" type = "text" name = "procmpanyname" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Company Address</label>
				  		</div>
				  		<div class="form-input">
				  			<input id="company_Address" type = "text" name = "procompaddress" required="">
				  		</div>
				  	</div>
			  	</div>
			  	<div class ="form-submit">
			  		<input type ="submit" name="submit" value="Register" >
			  	</div>
			  	
			  </form>
		</div>
		
		<script>
		  $('#ProInsertCusForm').parsley();
		</script>
	  
	  		
	</fieldset>		

	
</div><!--CustomerInsertForm-->
	
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