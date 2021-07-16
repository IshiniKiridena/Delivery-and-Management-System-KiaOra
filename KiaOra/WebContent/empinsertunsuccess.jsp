<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Insert Unsuccess!</title>
<link rel = "stylesheet" href = "Styles/bill_styles.css"/>
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
                <li><a href="emp_login.jsp">Employee Portal</a></li>
                <li><a href="adminAccount.jsp">Admin Account</a></li>
                <li><a href="emphome.jsp">Employee Home</a></li>
                <li><a href="emp_reg.jsp">Register Employee</a></li>
                <li>Insert Unsuccessful</li>
			</ul> 
		</div>
		
		<div class = "showMessageUnsuccess">
			<center>
			
				 <img src="images/error.png" alt="Error" width="312" height="312">
				 
				 <br><br><br><br> 
				
				<h2>Error in entering an employee! Please try again!</h2>
				<br><br>
				<p>Please check if you added information correctly</p>
				<br><br>
				<h3><a href = "emp_reg.jsp">Try Again!</a></h3>
				<h3><a href = "emphome.jsp">Go to home page</a></h3>
			</center>
		</div><!-- showMessageUnsuccess -->
		
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