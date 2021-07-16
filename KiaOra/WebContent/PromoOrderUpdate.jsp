<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet" href = "Styles/PromoFormStyle.css"/>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/parsley.min.js"></script>
</head>
<body>
	
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
  				<li>Update Details</a></li>
			</ul> 
		</div>

<div class ="form-wrapper">
	
	<fieldset>
		
		<h1>Order Details Update -Promotion</h1>
		
		<div class="form-cd1-wrapper">
			<form id="promoOrderUpdate" action="PromoUpdateOrderServlet" method ="post" class="form-cd1" data-parsley-validate="">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Customer ID</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proCusID" value = "<%=cusID%>" readonly required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Order ID</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proOrderID" value = "<%=orderID%>" readonly required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Product</label>
				  		</div>
				  	<div class="form-select">
			  			<select name="proItem" id="proItems"><br>
			  				<option value="<%=modelID%>" selected><%=modelID%></option>
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
				  		
				  		<div class="form-input">
				  			<input type ="hidden" name = "proPriviousItem" value = "<%=modelID%>" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Unit Price</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proItemUnPrice" value = "<%=unitPrice%>" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Quantity</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proItemQuantity" value = "<%=quantity%>" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-input">
				  			<input type ="hidden" name = "proPriviousquantity" value = "<%=quantity%>" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Discount</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proItemUnDiscount" value = "<%=discount%>" required="">
				  		</div>
				  	</div>
				  	<div>
					  		<div class="form-label">
					  			<label>Payment Status</label>
					  		</div>
					  		<div>
					  			<div class="form-status-vertical">
					  			
					  			
					  			<%
					  			
					  			String[] paystatus = {"Paid", "PartiallyPaid"};
					  			
					  			for (String pysts : paystatus){
					  				
					  				%>
					  				<div>
					  				
					  				
					  				<%

					  				if (paymentStatus.equals(pysts)){
					  					
					  					%>
						  					<input type="radio" id="proPaid" name="paymentStatus" value="<%=pysts%>" checked>
						  				<%
					  					
					  				} else {
					  					%>
					  						<input type="radio" id="proPaid" name="paymentStatus" value="<%=pysts%>" >
					  					<%
					  				}
					  				
					  				%>
					  				</div>
					  				<div>
							  				<label for="proPaid"><%=pysts%></label>
							  		</div>
					  				<%

				  				}
					  			%>
			  						
	  							</div>
					  		</div>
					  	</div>
					
					 <div>
				  		<div class="form-input">
				  			<input type ="hidden" name = "prevPaystatus" value = "<%=paymentStatus%>" required="">
				  		</div>
				  	</div>
					  	
				  	<div>
				  		<div class="form-label">
				  			<label>Amount Paid</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proAmount" value = "<%=amountPaid%>" required="">
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Order Date</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="date" name = "proPurchasedDate" value = "<%=oDate%>" required="">
				  		</div>
				  	</div>
			  	</div>
			  	<div class ="form-submit">
			  		<input type ="submit" name="submit" value="Update Details" >
			  	</div>
			  	
			  </form>
		</div>
	  
	  <script>
		  $('#promoOrderUpdate').parsley();
		</script>
	  		
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