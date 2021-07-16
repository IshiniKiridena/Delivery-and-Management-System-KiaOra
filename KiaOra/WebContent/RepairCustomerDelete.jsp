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
  				
  				<li><a href="CustomerAccount.jsp">Customer Details</a></li>
  				
  				
  				<li>Delete Customer Details</li>
			</ul> 
		</div>

		<div>
		<center>
			<h1>Delete Customer</h1>
<% 
		String cusID = request.getParameter("cusID");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String addressLine = request.getParameter("addressLine");
		String street = request.getParameter("street");
		String city= request.getParameter("city");
		String phone = request.getParameter("phone");
		
%>

	<form method="post" action="RepairCustomerDeleteServlet">
			<fieldset>
			<table class="reptbl">
			<tr>
				<td><lable >Customer ID</lable></td>
				<td><input type="text" name="cusID" value="<%=cusID%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Customer Name</lable></td>
				<td><input type="text" name="name"value="<%=name%>"readonly></td>
			</tr>
			<tr>
				<td><lable >Customer NIC</lable></td>
				<td><input type="text" name="nic"value="<%=nic%>"readonly></td>
			</tr>
			<tr>
				<td><lable >Address Line</lable></td>
				<td><input type="text" name="addressLine"value="<%=addressLine%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Street</lable></td>
				<td><input type="text" name="street"value="<%=street%>"readonly></td>
			</tr>
			<tr>
				<td><lable >City</lable></td>
				<td><input type="text" name="city"value="<%=city%>"readonly><br></td>
			</tr>
			<tr>
				<td><lable >Phone</lable></td>
				<td><input type="number" name="phone"value="<%=phone%>"readonly><br></td>
			</tr>
			
			
				
			</table>
					<input type="submit" class="button" value="Delete Data" name = "repcusDelete" style="background-color:red">
			
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