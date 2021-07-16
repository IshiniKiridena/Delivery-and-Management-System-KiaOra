<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet" href = "Styles/PromoDisplayForm.css"/>
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
  				<li>Summary</li>
			</ul> 

		</div>
<div class="table-wrapper">
	
		<div class = "header-center">
			<h1>Summary</h1>
		</div>
		<center>
				<div name = "credential_error" id ="credential_error" class="credential_error"> ${credential_error}</div>
			</center>
	<table>
		<c:forEach var ="promocus" items ="${proCustomerDetails2}">
			
			<c:set var ="cusID" value ="${promocus.cusID}"></c:set>
			<c:set var ="name" value ="${promocus.name}"></c:set>
			<c:set var ="NIC" value ="${promocus.NIC}"></c:set>	
			<c:set var ="street" value ="${promocus.street}"></c:set>
			<c:set var ="city" value ="${promocus.city}"></c:set>
			<c:set var ="phoneNo" value ="${promocus.phoneNo}"></c:set>
			<c:set var ="companyName" value ="${promocus.companyName}"></c:set>
			<c:set var ="companyAddress" value ="${promocus.companyAddress}"></c:set>
				
				<tr>
					<td>
						Customer ID	
					</td>
					<td>
						${promocus.cusID}
					</td>
				</tr>
				<tr>
					<td>
						Full Name	
					</td>
					<td>
						${promocus.name}
					</td>
				</tr>
				<tr>
					<td>
						NIC	
					</td>
					<td>
						${promocus.NIC}
					</td>
				</tr>
				
				<tr>
					<td>
						Street
					</td>
					<td>
						${promocus.street}
					</td>
				</tr>
				<tr>
					<td>
						City	
					</td>
					<td>
						${promocus.city}
					</td>
				</tr>
				<tr>
					<td>
						Telephone
					</td>
					<td>
						${promocus.phoneNo}
					</td>
				</tr>
				<tr>
					<td>
						Company Name	
					</td>
					<td>
						${promocus.companyName}
					</td>
				</tr>
				<tr>
					<td>
						Company Address	
					</td>
					<td>
						${promocus.companyAddress}
					</td>
				</tr>
		
				
			</c:forEach>
		</table>	
		<br>
		
	 <table>	
		<c:forEach var ="cusOrder" items ="${proCustomerOrderDetails}">	

		<c:set var ="orderID" value ="${cusOrder.orderID}"></c:set>
		<c:set var ="dueDate" value ="${cusOrder.dueDate}"></c:set>
		<c:set var ="discount" value ="${cusOrder.discount}"></c:set>
		<c:set var ="amountPaid" value ="${cusOrder.amountPaid}"></c:set>
		<c:set var ="totPayment" value ="${cusOrder.totPayment}"></c:set>
		<c:set var ="unitPrice" value ="${cusOrder.unitPrice}"></c:set>
		<c:set var ="quantity" value ="${cusOrder.quantity}"></c:set>
		<c:set var ="oDate" value ="${cusOrder.oDate}"></c:set>
		<c:set var ="updatedDate" value ="${cusOrder.updatedDate}"></c:set>
		<c:set var ="paymentStatus" value ="${cusOrder.paymentStatus}"></c:set>
		<c:set var ="modelID" value ="${cusOrder.modelID}"></c:set>
						
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
						Product
					</td>
					<td>
						${cusOrder.modelID}
					</td>
				</tr>
				<tr>
					<td>
						Discount (%)	
					</td>
					<td>
						${cusOrder.discount}
					</td>
				</tr>		
				<tr>
					<td>
						Price/Unit
					</td>
					<td>
						${cusOrder.unitPrice}
					</td>
				</tr>
				<tr>
					<td>
						Quantity	
					</td>
					<td>
						${cusOrder.quantity}
					</td>
				</tr>
				
				<tr>
					<td>
						Payment Status
					</td>
					<td>
						${cusOrder.paymentStatus}
					</td>
				</tr>
				<tr>
					<td>
						Paid Amount (LKR)
					</td>
					<td>
						${cusOrder.amountPaid}
					</td>
				</tr>
				<tr>
					<td>
						Total Amount (LKR)	
					</td>
					<td>
						${cusOrder.totPayment}
					</td>
				</tr>
				<tr>
					<td>
						Date of Purchase
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
	 
		<c:url value="UpdatePromoCustomer.jsp" var ="UpdatePromoCustomer">
			
			<c:param name="cusID" value = "${cusID}"></c:param>
			<c:param name="name" value = "${name}"></c:param>
			<c:param name="NIC" value = "${NIC}"></c:param>
			<c:param name="street" value = "${street}"></c:param>
			<c:param name="city" value = "${city}"></c:param>
			<c:param name="phoneNo" value = "${phoneNo}"></c:param>
			<c:param name="companyName" value = "${companyName}"></c:param>
			<c:param name="companyAddress" value = "${companyAddress}"></c:param>
			<c:param name="orderID" value = "${orderID}"></c:param>
			<c:param name="dueDate" value = "${dueDate}"></c:param>
			<c:param name="discount" value = "${discount}"></c:param>
			<c:param name="amountPaid" value = "${amountPaid}"></c:param>
			<c:param name="totPayment" value = "${totPayment}"></c:param>
			<c:param name="quantity" value = "${quantity}"></c:param>
			<c:param name="unitPrice" value = "${unitPrice}"></c:param>
			<c:param name="modelID" value = "${modelID}"></c:param>
			<c:param name="oDate" value = "${oDate}"></c:param>
			<c:param name="paymentStatus" value = "${paymentStatus}"></c:param>
			
		</c:url>
		<div class="searchbutton">
			<div class="buttone-lement">
				<a href ="${UpdatePromoCustomer}">
				
					<input type ="button" name="ProUpdate" value="Update Details">
				
				</a>
			</div>
			
			<div class="buttone-lement">
				<a href="PromoMain.jsp">
					<input type ="button" name="ConfirmOrder" value="Confirm Order">
				</a>
			</div>
		</div>
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