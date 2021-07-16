<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Search</title>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>
</head>
<body>
<div class="wrapper">

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
  				<li>Search</li>
			</ul> 
		</div>
<div class="emploginform">
	<center>
	<h1>Search Employee</h1>
	<form action="EmpSearchServlet" method="post">
	<fieldset>
	<div class = "billformInner">
		Employee ID <input type="text" name="empid"><br>
		
		<input type="submit" name="submit" value="Search">
		</div>
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
		</div> 
		</div>
</body>
</html>