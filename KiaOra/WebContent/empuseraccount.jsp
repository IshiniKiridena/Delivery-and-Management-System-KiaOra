<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee User Profile</title>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>
</head>
<body>
<div="wrapper">
<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  				<li><a href="#">Home</a></li>
  				<li><a href="emp_login.jsp">Employee Portal</a></li>
 				<li><a href="adminAccount.jsp">Admin Account</a></li>
 				<li><a href="emphome.jsp">EmployeeHome</a></li>
  				<li><a href="emp_search.jsp">Search</a></li>
  				<li>UserAccount</li>
			</ul> 
		</div>
		
		
		<form method="post" action="#">

<div class="empregform">
		<center>
		
		<h1>Employee Details</h1>
		<br><br>
	<table>
	
	
	
	<c:forEach var="emp" items="${empdetails}">
	<c:set var="id" value="${emp.id}"/>
	<c:set var="name" value="${emp.name}"/>
	<c:set var="username" value="${emp.username}"/>
	<c:set var="password" value="${emp.password}"/>
	<c:set var="address" value="${emp.address}"/>
	<c:set var="phone" value="${emp.phone}"/>
	<c:set var="position" value="${emp.position}"/>

		
	<tr>
		<td><label>Employee NIC</label></td>
		<td><input type="text" value="${emp.id}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee Name</label></td>
		<td><input type="text" value="${emp.name}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee UserName</label></td>
		<td><input type="text"value="${emp.username}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee Password</label></td>
		<td><input type="text" value="${emp.password}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee Address</label></td>
		<td><input type="text" value="${emp.address}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee Phone</label></td>
		<td><input type="text" value="${emp.phone}"readonly></td>
	</tr>
	<tr>
		<td><label>Employee Position</label></td>
		<td><input type="text" value="${emp.position}"readonly></td>
	</tr>
	</c:forEach>

	<c:forEach var="emp" items="${empsaldetails}">
	<c:set var="saldate" value="${emp.saldate}"/>
	<c:set var="basicsal" value="${emp.basicsal}"/>
	<c:set var="targetcovered" value="${emp.targetcovered}"/>
	<c:set var="targetsales" value="${emp.targetsales}"/>
	<c:set var="commision" value="${emp.commision}"/>

	<tr>
		<td><label>Salary Date</label></td>
		<td><input type="text" value="${emp.saldate}"readonly></td>
	</tr>
	<tr>
		<td><label>Basic Salary</label></td>
		<td><input type="text" value="${emp.basicsal}"readonly></td>
	</tr>
	<tr>
		<td><label>Target Covered</label></td>
		<td><input type="text" value="${emp.targetcovered}"readonly></td>
	</tr>
	<tr>
		<td><label>Target Assigned</label></td>
		<td><input type="text" value="${emp.targetsales}"readonly></td>
	</tr>
	<tr>
		<td><label>Commission (%)</label></td>
		<td><input type="text" value="${emp.commision}"readonly></td>
	</tr>	
	</c:forEach>
	
	</table>
	</form>
	
	</center>
	</div>

	<c:url value="emp_update.jsp" var="empup">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="position" value="${position}"/>
		<c:param name="saldate" value="${saldate}"/>
		<c:param name="basicsal" value="${basicsal}"/>
		<c:param name="targetcovered" value="${targetcovered}"/>
		<c:param name="targetsales" value="${targetsales}"/>
		<c:param name="commision" value="${commision}"/>
	</c:url>

<center>
	<a href="${empup}">
	<input type="button" name="update" value="Edit Account" >
	</a>
	<br><br>
	<c:url value="emp_del.jsp" var="empdel">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="position" value="${position}"/>
		<c:param name="saldate" value="${saldate}"/>
		<c:param name="basicsal" value="${basicsal}"/>
		<c:param name="targetcovered" value="${targetcovered}"/>
		<c:param name="targetsales" value="${targetsales}"/>
		<c:param name="commision" value="${commision}"/>
	</c:url>
	<a href="${empdel}">
	<input type="button" name="delete" value="Delete Account" style="background-color:red">
	</a>
	</center>

<div class = "footer clearfix">
			<p>Copyright©2021 KIAORA Enterprises</p>

			<ul>
				<li><a href = "#">Facebook</a></li>
				<li><a href = "#">Twitter</a></li>
				<li><a href = "#">Instagram</a></li>
				<li><a href = "#">RSS feed</a></li>
			</ul>
		</div> 
		</div>
</body>
</html>