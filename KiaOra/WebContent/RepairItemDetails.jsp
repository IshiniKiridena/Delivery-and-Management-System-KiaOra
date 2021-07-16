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
                  <li><a href="adminAccount.jsp">Admin Account</a></li>
                  <li><a href="RepairHome.jsp">Item Repair Details</a></li>
  				  <li><a href="RepairItemSearch.jsp">Search Item</a></li>
  				
  				<li>Item Details</li>
			</ul> 
			</ul> 
		</div>

		<div>
		<center>
			
			<fieldset>
			<table class="reptbl">
			<c:forEach var = "repItem" items = "${RepairItemDetails}">
			<c:set var = "cusID" value = "${repItem.cusID}"/>
			<c:set var = "rItemNo" value = "${repItem.rItemNo}"/>
			<c:set var = "ritemName" value = "${repItem.ritemName}"/>
			<c:set var = "warranty_status" value = "${repItem.warranty_status}"/>
			<c:set var = "damageDescription" value = "${repItem.damageDescription}"/>
			<c:set var = "amount" value = "${repItem.amount}"/>
			<c:set var = "returningDate" value = "${repItem.returningDate}"/>
			
			<tr>
					<td>Customer ID</td>
					<td>${repItem.cusID}</td>
				</tr>
				<tr>
					<td>Item ID</td>
					<td>${repItem.rItemNo}</td>
				</tr>
				<tr>
					<td>Item Name</td>
					<td>${repItem.ritemName}</td>
				</tr>
				<tr>
					<td>Warranty Status</td>
					<td>${repItem.warranty_status}</td>
				</tr>
				<tr>
					<td>Damage Description</td>
					<td>${repItem.damageDescription}</td>
				</tr>
				<tr>
					<td>Amount</td>
					<td>${repItem.amount}</td>
				</tr>
				<tr>
					<td>Returning Date</td>
					<td>${repItem.returningDate}</td>
				</tr>
				
			</c:forEach>
			</table>
			
			<c:url value = "RepairItemUpdate.jsp" var = "repItemUpdate">
				<c:param name="cusID" value = "${cusID}"></c:param>
				<c:param name="rItemNo" value = "${rItemNo}"></c:param>
				<c:param name="ritemName" value = "${ritemName}"></c:param>
				<c:param name="warranty_status" value = "${warranty_status}"></c:param>
				<c:param name="damageDescription" value = "${damageDescription}"></c:param>
				<c:param name="amount" value = "${amount}"></c:param>
				<c:param name="returningDate" value = "${returningDate}"></c:param>
					
			</c:url>
			
			<a href = "${repItemUpdate}">
				<input type = "submit" name = "UpdateLink" value = " Update Data">
			</a>
			
			<br>
	<c:url value = "RepairItemDelete.jsp" var = "repItemDelete">
				<c:param name="cusID" value = "${cusID}"></c:param>
				<c:param name="rItemNo" value = "${rItemNo}"></c:param>
				<c:param name="ritemName" value = "${ritemName}"></c:param>
				<c:param name="warranty_status" value = "${warranty_status}"></c:param>
				<c:param name="damageDescription" value = "${damageDescription}"></c:param>
				<c:param name="amount" value = "${amount}"></c:param>
				<c:param name="returningDate" value = "${returningDate}"></c:param>
						
			</c:url>
	<a href="${repItemDelete}">
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