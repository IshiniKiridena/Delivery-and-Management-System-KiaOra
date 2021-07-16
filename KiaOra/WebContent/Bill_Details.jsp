<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Details</title>
<link rel = "stylesheet" href = "Styles/bill_styles.css"/>
<style type="text/css">
	
	.DetTable{
		width : 50%;
	}
	
	/*table*/
	table {
  		border-collapse: collapse;
  		width: 100%;
	}

	th, td {
  		text-align: left;
  		padding: 8px;
	}

	tr:nth-child(even) {background-color: grey;}
	tr:nth-child(odd) {background-color: #eee;}
	
	input[type = button]{
		background-color: #04406c;
	 	border: none;
	 	border-radius: 4px;
	 	color: white;
	 	padding: 15px 32px;
	 	text-align: center;
	  	text-decoration: none;
	  	display: inline-block;
	  	font-size: 16px;
	  	margin: 4px 2px;
	  	margin-left : 10px;
	  	margin-right : 10px;
	  	cursor: pointer;
	}
	
	input[type = button]:hover {
  		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}
	
</style>
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
                <li><a href="#">Employee Portal</a></li>
                <li><a href="adminAccount.jsp">Admin Account</a></li>
                <li><a href="BillHome.jsp">Showroom</a></li>
                <li><a href="BillSearch.jsp">Search, Delete or Edit Bills</a></li>
                <li>Bill Details</li>
			</ul> 
		</div>
		
		<center>
			<div class = "DetTable">
			<h1>Bill Details</h1>
			<br><br>
			<table>
			<c:forEach var = "bill" items = "${billDetails}">
			
			<c:set var = "bill_code" value = "${bill.bill_code}"/>
			<c:set var = "utility_type" value = "${bill.utility_type}"/>
			<c:set var = "dueDate" value = "${bill.dueDate}"/>
			<c:set var = "status" value = "${bill.status}"/>
			<c:set var = "amount" value = "${bill.amount}"/>
			<c:set var = "date" value = "${bill.date}"/>
			<c:set var = "month" value = "${bill.month}"/>
			
				<tr>
					<td>Bill Code</td>
					<td>${bill.bill_code}</td>
				</tr>
				<tr>
					<td>Utility Type</td>
					<td>${bill.utility_type}</td>
				</tr>
				<tr>
					<td>Due Date</td>
					<td>${bill.dueDate}</td>
				</tr>
				<tr>
					<td>Status</td>
					<td>${bill.status}</td>
				</tr>
				<tr>
					<td>Amount</td>
					<td>${bill.amount}</td>
				</tr>
				<tr>
					<td>Date Received</td>
					<td>${bill.date}</td>
				</tr>
				<tr>
					<td>Month Received</td>
					<td>${bill.month}</td>
				</tr>
			</c:forEach>
			</table>
			
			<br><br><br><br>
			
			<c:url value = "BillUpdate.jsp" var = "billUpdate">
				<c:param name="bill_code" value = "${bill_code}"></c:param>
				<c:param name="utility_type" value = "${utility_type}"></c:param>
				<c:param name="dueDate" value = "${dueDate}"></c:param>
				<c:param name="status" value = "${status}"></c:param>
				<c:param name="amount" value = "${amount}"></c:param>
				<c:param name="date" value = "${date}"></c:param>
				<c:param name="month" value = "${month}"></c:param>		
			</c:url>
			
			<a href = "${billUpdate}">
				<input type = "button" name = "UpdateLink" value = "I want to update bill details">
			</a>
			
			<c:url value = "BillDelete.jsp" var = "billDelete">
				<c:param name="bill_code" value = "${bill_code}"></c:param>
				<c:param name="utility_type" value = "${utility_type}"></c:param>
				<c:param name="dueDate" value = "${dueDate}"></c:param>
				<c:param name="status" value = "${status}"></c:param>
				<c:param name="amount" value = "${amount}"></c:param>
				<c:param name="date" value = "${date}"></c:param>
				<c:param name="month" value = "${month}"></c:param>		
			</c:url>
			<a href = "${billDelete}">
				<input type = "button" name = "DeleteLink" value = "I want to delete bill details" style="background-color:red">
			</a>
			</div><!-- DetTable -->
		</center>
		<br><br>
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