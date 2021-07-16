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
<link rel = "stylesheet" href = "Styles/PromoDisplayForm.css"/>
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
	  				<li>Search Installment</li>
	  				
				</ul> 
			</div>

<fieldset>
<div class="table-wrapper border-close">
	<table>
	<c:forEach var ="cusOrder" items ="${proInstallment}">		
	
		<c:set var ="orderID" value ="${cusOrder.orderID}"></c:set>
		<c:set var ="amountPaid" value ="${cusOrder.amountPaid}"></c:set>
		<c:set var ="modelID" value ="${cusOrder.modelID}"></c:set>
		<c:set var ="totPayment" value ="${cusOrder.totPayment}"></c:set>
			<tr>
				<td>
					Order ID
				</td>
				<td>
					${cusOrder.orderID}
				</td>
			</tr>
			<tr>
				<td>
					Item
				</td>
				<td>
						${cusOrder.modelID}
				</td>
			</tr>		
			<tr>
				<td>
					Total Amount
				</td>
				<td>
					${cusOrder.totPayment}
				</td>
			</tr>
			<tr>
				<td>
					Paid Amount
				</td>
				<td>
					${cusOrder.amountPaid}
				</td>
			</tr>
			<tr>
				<td>
					Remaining Amount
				</td>
				<td>
					${cusOrder.remainingAmount}
				</td>
			</tr>
			<tr>
				<td>
					Order Date
				</td>
				<td>
					${cusOrder.oDate}
				</td>
			</tr>
			<tr>
				<td>
					Last Updated Date
				</td>
				<td>
					${cusOrder.updatedDate}
				</td>
			</tr>	
			
		</c:forEach>
	</table>
</div>
	<div class="form-cd1-wrapper">
			<form id="ProInsertCusForm" action="PromoUpdateInstallServlet" method="post" class="form-cd1" data-parsley-validate="">
			  	<div class="form-element">
			  		<div>
				  		<div>
				  			<input type ="hidden" name = "proOrderID" value = "${orderID}">
				  		</div>
				  	</div>
				  	<div>
				  		<div>
				  			<input type ="hidden" name = "proAmount" value = "${amountPaid}">
				  		</div>
				  	</div>
				  	<div>
				  	<div>
				  		<input type ="hidden" name = "modelID" value = "${modelID}">
				  	</div>
				  </div>
				  <div>
				  		<div>
				  			<input type ="hidden" name = "totPayment" value = "${totPayment}">
				  		</div>
				  	</div>
				  	
				  	<div>
				  		<div class="form-label">
				  			<label>Outstanding Amount</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="outAmount" type="text" name="proUpdateAmount"  required="">
				  		</div>
				  	</div>
				  	
				  	<div>
				  		<div class="form-label">
				  			<label>Payment Status</label>
				  		</div>
				  		<div>
				  			<div class="form-status-vertical">
				  				
					  				<div>
						  				<input type="radio" id="proPaid" name="paymentStatus" value="Paid"  required="">
						  			</div>
						  			<div>
						  				<label for="proPaid">Paid</label>
						  			</div>

						  		
						  			<div>
						  				<input type="radio" id="proNotPaid" name="paymentStatus" value="Unpaid"  required="">
						  			</div>
		  							<div>
		  								<label for="proNotPaid">Unpaid</label>
		  							</div>	
		  						
  							</div>
				  		</div>
				  	</div>
				  	
				  	<div>
				  		<div class="form-label">
				  			<label>Date</label>
				  		</div>
				  		<div class="form-input">
				  			<input id ="updateDate" type="Date" name="ProUpdateDate"  required="">
				  		</div>
				  	</div>
				  	
			  	</div>
			  	<div class ="form-submit">
			  		<input type ="submit" name="submit" value="Update" >
			  	</div>
  	
			  	
			  </form>
		</div>
</fieldset>	
<script>
		  $('#ProInsertCusForm').parsley();
		</script>


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