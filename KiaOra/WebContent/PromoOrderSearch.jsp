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
  				<li>Search Details</a></li>
			</ul> 
		</div>

<div class="table-wrapper">
	<table>
	<c:forEach var ="cusOrder" items ="${proUpdateOrderDetails}">	
		
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
		<c:set var ="cusID" value ="${cusOrder.cusID}"></c:set>
	
		
			
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
					Customer ID
				</td>
				<td>
					${cusOrder.cusID}
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
					Discount
				</td>
				<td>
					${cusOrder.discount}
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
					Total Amount
				</td>
				<td>
					${cusOrder.totPayment}
				</td>
			</tr>
			<tr>
				<td>
					Unit Price
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
			<tr>
				<td>
					Payment Status
				</td>
				<td>
					${cusOrder.paymentStatus}
				</td>
			</tr>
			
			
			
		</c:forEach>
	</table>
		<c:url value="PromoOrderUpdate.jsp" var ="PromoOrderUpdate">
			
			<c:param name="cusID" value = "${cusID}"></c:param>
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
			<c:param name="updatedDate" value = "${updatedDate}"></c:param>
			
		</c:url>
	<div class="searchbutton">
		<div class="buttone-lement">
	
			<a href ="${PromoOrderUpdate}">
			
				<input type ="button" name="ProUpdate" value="Update Details">
			
			</a>
		</div>	
			<c:url value="PromoDeleteOrder.jsp" var ="PromoDeleteOrder">
				
				<c:param name="cusID" value = "${cusID}"></c:param>
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
				<c:param name="updatedDate" value = "${updatedDate}"></c:param>
				
			</c:url>
		<div class="buttone-lement btn-red">
			<a href ="${PromoDeleteOrder}">
			
				<input type ="button" name="ProOrderdelete" value="Delete Order">
			
			</a>
		</div>
		<div class="buttone-lement">
			<a href ="PromoMain.jsp">
			
				<input type ="button" name="confirmOrder" value="Confirm">
			
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