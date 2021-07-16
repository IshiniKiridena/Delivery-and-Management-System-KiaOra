<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  				<li>Add Order</a></li>
  				
			</ul> 
		</div>
	
 <table>
	<c:forEach var ="cus" items ="${proCustomerDetails}">
		
		<c:set var ="cusID" value ="${cus.cusID}"></c:set>
		
	</c:forEach>
</table>


<div class ="form-wrapper">
	<div class="field-wrapper">
		<fieldset>
	
			<h1>Add New Order - Promotion</h1>
			
			
			<center>
				<div name = "credential_error" id ="credential_error" class="credential_error"> ${credential_error}</div>
			</center>
			
			
			<div class="form-cd1-wrapper">
				<form id="promoOrderInsert" action="ProOrderServlet" method="post" class="form-cd1" data-parsley-validate="">
				  	<div class="form-element">
				  		<div>
					  		<div class="form-label">
					  			<label>Customer ID</label>
					  		</div>
					  		<div class="form-input">
					  			<input type="number" name ="promocusID" value="${cusID}" required="">
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Product</label>
					  		</div>
					  		<div class="form-select">
					  			<select name="proItem" id="proItems" required=""><br>
				  					<option value="Singer-rc2L">Singer-rc2L</option>
				 					<option value="Singer-rc5L">Singer-rc5L</option>
				 					<option value="RichS-gcRS547">RichS-gcRS547</option>
				 					<option value="Dimo-flW40">Dimo-flW40</option>
				 					<option value="Dimo-flW100">Dimo-flW100</option>
				 					<option value="PanaS-ledW15">PanaS-ledW15</option>
				 					<option value="PanaS-ledW18">PanaS-ledW18</option>
				 					<option value="Innovex-wm7">Innovex-wm7</option>
				 					<option value="Sams-TVHD40">Sams-TVHD40</option>
				 					<option value="PanaS-TVViver43">PanaS-TVViver43</option>
	 					
								</select>
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Price/Unit</label>
					  		</div>
					  		<div class="form-input">
					  			 <input type="number" name ="proItemUnPrice" required="">
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Quantity</label>
					  		</div>
					  		<div class="form-input">
					  			 <input type="number" name ="proItemQuantity" required="">
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Discount (%)</label>
					  		</div>
					  		<div class="form-input">
					  			<input type="number" name ="proItemUnDiscount" required="">
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Payment Status</label>
					  		</div>
					  		<div>
					  			<div class="form-status-vertical">
					  				
						  				<div>
							  				<input type="radio" id="proPaid" name="paymentStatus" value="Paid" required="">
							  			</div>
							  			<div>
							  				<label for="proPaid">Paid</label>
							  			</div>
	
							  		
							  			<div>
							  				<input type="radio" id="proNotPaid" name="paymentStatus" value="PartiallyPaid" required="">
							  			</div>
			  							<div>
			  								<label for="proNotPaid">Partially Paid</label>
			  							</div>	
			  						
	  							</div>
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label>Amount (LKR)</label>
					  		</div>
					  		<div class="form-input">
					  			<input type="number" name ="proAmount" required="">
					  		</div>
					  	</div>
					  	<div>
					  		<div class="form-label">
					  			<label for="proPurchasedDate">Date of Purchase</label>
					  		</div>
					  		<div class="form-input">
					  			<input type="date" id="proPurchasedDate" name="proPurchasedDate" required="">
					  		</div>
					  	</div>
				  	</div>
				  	<div class="form-submit">
				  		<input type ="submit" name="submit" value="Add Order" >
				  	</div>
				  	
				  </form>
			</div>
			
			<script>
			  $('#promoOrderInsert').parsley();
			</script>
		  
		  		
		</fieldset>		
	</div>
	
</div><!--form-wrapper-->

		
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