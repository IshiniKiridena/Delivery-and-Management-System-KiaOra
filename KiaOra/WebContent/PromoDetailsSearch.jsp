<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet" href = "Styles/PromoFormStyle.css"/>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/parsley.min.js"></script>
<title>Insert title here</title>
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
  				<li>Search Details</a></li>
  				
			</ul> 
		</div>

<div class ="form-wrapper form-wrapperset promodtlssrh">
	<fieldset class="display-flex">
	
		<div class="form-vertical">
			<h1>Search Customer Details</h1>	
			<div class="form-cd1-wrapper">
				<form id="promoSearchCustomer" action ="PromoSearchCustomerServlet" method ="post" class="form-cd1" data-parsley-validate="">	
				  	<div class="form-element">
				  		<div class = "form-element-vertical">
					  		<div class="form-label">
					  			<label>Enter NIC </label>
					  		</div>
					  		<div class="form-input-search">
					  			<input type ="text" name = "procusnic" required="">
					  		</div>
					  	</div>
					  	
				  	</div>
				  	<div class="form-submit">
				  		<input type ="submit" name="submit" value="Search" >
				  	</div>		  	
				  </form>
			</div>
		</div>	
		
		<div class="form-vertical form-border">	
			<h1>Search Order Details</h1>		
			<div class="form-cd1-wrapper">
				<form  id="promoSearchOrder" action ="PromoSearchOrderServlet" method ="post" class="form-cd1" data-parsley-validate="">
		
				  	<div class="form-element">
				  		<div class="form-element-vertical">
					  		<div class="form-label">
					  			<label>Enter Order ID </label>
					  		</div>
					  		<div class="form-input-search">
					  			<input type ="text" name = "proOrderID" required="" data-parsley-type="digits"	>
					  		</div>
					  	</div>
					  	
				  	</div>
				  	<div class="form-submit">
				  		<input type ="submit" name="submit" value="Search" >
				  	</div>
		
				 </form>
			</div>
		</div>	
	
		<div class="form-vertical form-border">	
			<h1>Search Installments</h1>		
			<div class="form-cd1-wrapper">
				<form id="promoSearchInstallment" action ="ProSearchInstallmentServlet" method ="post" class="form-cd1" data-parsley-validate="">
				  	<div class="form-element">
				  		<div class="form-element-vertical">
					  		<div class="form-label">
					  			<label>Enter Order ID </label>
					  		</div>
					  		<div class="form-input-search">
					  			<input type ="text" name = "proOrderID" required="" data-parsley-type="digits"	>
					  		</div>
					  	</div>
					  	
				  	</div>
				  	<div class="form-submit">
				  		<input type ="submit" name="submit" value="Search" >
				  	</div>	
				 </form>
			</div>
		</div>
	</fieldset>
	
	<script>
		  $('#promoSearchCustomer').parsley();
		  $('#promoSearchOrder').parsley();
		  $('#promoSearchInstallment').parsley();
		</script>
		
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