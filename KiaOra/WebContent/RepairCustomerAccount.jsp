<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/repair_style2.css"/>
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
  				<li><a href="#">Home</a></li>
                  <li><a href="#">Employee Portal</a></li>
                  <li><a href="#">Admin Account</a></li>
                  <li><a href="RepairHome.jsp">Item Repair Details</a></li>
  				  <li><a href="RepairCustomerSerach.jsp">Search Customer</a></li>
  				
  				<li>Customer Details</li>
			</ul> 
		</div>

		<div>
		<center>
		<fieldset>
	<table class="reptbl">
	<c:forEach var = "repCus" items = "${RepairCustomerDetails}">
			<c:set var = "cusID" value = "${repCus.cusID}"/>
			<c:set var = "name" value = "${repCus.name}"/>
			<c:set var = "nic" value = "${repCus.nic}"/>
			<c:set var = "addressLine" value = "${repCus.addressLine}"/>
			<c:set var = "street" value = "${repCus.street}"/>
			<c:set var = "city" value = "${repCus.city}"/>
			<c:set var = "phone" value = "${repCus.phone}"/>
			
		
				<tr>
					<td>Customer ID</td>
					<td>${repCus.cusID}</td>
				</tr>
				<tr>
					<td>Customer name</td>
					<td>${repCus.name}</td>
				</tr>
				<tr>
					<td>NIC</td>
					<td>${repCus.nic}</td>
				</tr>
				<tr>
					<td>Address Line</td>
					<td>${repCus.addressLine}</td>
				</tr>
				<tr>
					<td>street</td>
					<td>${repCus.street}</td>
				</tr>
				<tr>
					<td>city</td>
					<td>${repCus.city}</td>
				</tr>
				<tr>
					<td>phone</td>
					<td>${repCus.phone}</td>
				</tr>
				
				
			</c:forEach>
			</table>
			
			<c:url value = "RepairCustomerUpdate.jsp" var = "repcusUpdate">
				<c:param name="cusID" value = "${cusID}"></c:param>
				<c:param name="name" value = "${name}"></c:param>
				<c:param name="nic" value = "${nic}"></c:param>
				<c:param name="addressLine" value = "${addressLine}"></c:param>
				<c:param name="street" value = "${street}"></c:param>
				<c:param name="city" value = "${city}"></c:param>
				<c:param name="phone" value = "${phone}"></c:param>		
			</c:url>
			
			<a href="${repcusUpdate}">
		<input type = "submit" name = "UpdateLink" value = "Update Data">
	</a>
	
	<br>
	<c:url value = "RepairCustomerDelete.jsp" var = "repcusDelete">
				<c:param name="cusID" value = "${cusID}"></c:param>
				<c:param name="name" value = "${name}"></c:param>
				<c:param name="nic" value = "${nic}"></c:param>
				<c:param name="addressLine" value = "${addressLine}"></c:param>
				<c:param name="street" value = "${street}"></c:param>
				<c:param name="city" value = "${city}"></c:param>
				<c:param name="phone" value = "${phone}"></c:param>		
			</c:url>
	<a href="${repcusDelete}">
	<input type = "button" name = "DeleteLink" value = "Delete Data">
	</a>
		</fieldset>
		</center>
		
		
		
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
</body>
</html>