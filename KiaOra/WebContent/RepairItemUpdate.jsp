<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  				
  				<li><a href="RepairItemDetails.jsp">Item Details</a></li>
  				
  				
  				<li>Update Item Details</li>
			</ul> 
		</div>

		<div>
		<center>
			<h1>Update Item</h1>
	<% 
		String cusID = request.getParameter("cusID");
		String rItemNo = request.getParameter("rItemNo");
		String ritemName = request.getParameter("ritemName");
		String warranty_status = request.getParameter("warranty_status");
		String damageDescription = request.getParameter("damageDescription");
		String amount = request.getParameter("amount");
		String returningDate= request.getParameter("returningDate");

		
	%>

	<form method="post" action="RepairItemUpdateServlet">
			<fieldset>
					<table class="reptbl">
			<tr>
				<td><lable >Customer ID</lable></td>
				<td><input type="text" name="cusID" value="<%=cusID%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Item No</lable></td>
				<td><input type="text" name="rItemNo" value="<%=rItemNo%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Item Name</lable></td>
				<td><input type="text" name="ritemName" value="<%=ritemName%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Warranty Status</lable></td>
				<td><input type="text" name="warranty_status"value="<%=warranty_status%>"></td>
			</tr>
			<tr>
				<td><lable >Damage Description</lable></td>
				<td><input type="text" name="damageDescription"value="<%=damageDescription%>"><br></td>
			</tr>
			<tr>
				<td><lable >Amount</lable></td>
				<td><input type="text" name="amount"value="<%=amount%>"><br></td>
			</tr>
			<tr>
				<td><lable >Returning Date</lable></td>
				<td><input type="text" name="returningDate"value="<%=returningDate%>"><br></td>
			</tr>
				
			</table>
				
				
			<input type="submit" class="button" value="Update Data" name = "repItemUpdate">
			
			</fieldset>
			</form>
			
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