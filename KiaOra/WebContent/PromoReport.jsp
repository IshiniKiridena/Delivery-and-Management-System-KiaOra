<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Promotional Report Form</title>
<link rel = "stylesheet" href = "Styles/PromoFormStyle.css"/>
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
  				<li>Report Form</a></li>
  				
			</ul> 
		</div>

<div class ="form-wrapper">
	
	<fieldset>
		
		<h1>Monthly Report - Promotion</h1>
		
		<div class="form-cd1-wrapper">
			<form action="PromoReportServlet" method="post" class="form-cd1">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Year</label>
				  		</div>
				  		<div class="form-input">
				  			<input type= "text" name="prorepYear" required="">
				  		</div>
				  	</div>
				  	<div>
					  		<div class="form-label">
					  			<label>Month</label>
					  		</div>
					  		<div class="form-select">
					  			<select name="prorepMonth" id="proItems" required=""><br>
				  					<option value="-01">January</option>
				 					<option value="-02">February</option>
				 					<option value="-03">March</option>
				 					<option value="-04">April</option>
				 					<option value="-05">May</option>
				 					<option value="-06">June</option>
				 					<option value="-07">July</option>
				 					<option value="-08">August</option>
				 					<option value="-09">September</option>
				 					<option value="-10">October</option>
				 					<option value="-11">November</option>
				 					<option value="-12">December</option>
	 					
								</select>
					  		</div>
					  	</div>
				  	
				  	
			  	</div>
			  	<div class ="form-submit">
			  		<input type ="submit" name="submit" value="Get Information" >
			  	</div>
			  	
			  </form>
		</div>
		
		
	  
	  		
	</fieldset>		

	
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