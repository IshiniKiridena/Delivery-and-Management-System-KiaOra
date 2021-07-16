<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  				<li>Delete Order</li>
			</ul> 
		</div>

	<%
		int cusID = Integer.parseInt(request.getParameter("cusID"));
		int orderID = Integer.parseInt(request.getParameter("orderID"));
		String dueDate = request.getParameter("dueDate");
		String discount = request.getParameter("discount");
		double amountPaid = Double.parseDouble(request.getParameter("amountPaid"));
		double totPayment = Double.parseDouble(request.getParameter("totPayment"));
		double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String oDate = request.getParameter("oDate");
		String updatedDate = request.getParameter("updatedDate");
		String paymentStatus = request.getParameter("paymentStatus");
		String modelID = request.getParameter("modelID");
	
	%>
	
	
	<div class ="form-wrapper">
	
	<fieldset>
		
		<div class="form-cd1-wrapper">
			<form action="PromoDeleteOrderServlet" method ="post" class="form-cd1">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Customer ID</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proCusID" value = "<%=cusID%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Order ID</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proOrderID" value = "<%=orderID%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Item</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "proItem" value = "<%=modelID%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Unit Price</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proItemUnPrice" value = "<%=unitPrice%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Quantity</label>
				  		</div>
				  		<div class="form-input"> 
				  			<input type ="number" name = "proItemQuantity" value = "<%=quantity%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Discount</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proItemUnDiscount" value = "<%=discount%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Payment Status</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "paymentStatus" value = "<%=paymentStatus%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Amount Paid</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proAmount" value = "<%=amountPaid%>"readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Order Date</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="date" name = "proPurchasedDate" value = "<%=oDate%>" readonly>
				  		</div>
				  	</div>
			  	</div>
			  	<div class ="form-submit btn-red">
			  		<input type = "submit" name = "submit" value = "Delete Order">
			  	</div>
			  	
			  </form>
		</div>
	  
	  		
	</fieldset>		

	
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