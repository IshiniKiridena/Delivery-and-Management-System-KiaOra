<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Insert Success!</title>
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
                <li><a href="#">Employee Portal</a></li>
                <li><a href="adminAccount.jsp">Admin Account</a></li>
                <li><a href="BillHome.jsp">Showroom</a></li>
                <li><a href="Bill_Insert.jsp">Add Bill</a></li>
                <li>Bill Insert Success</li>
			</ul> 
		</div>
		
		<div class = "showMessageSuccess">
			<center>
			
				 <img src="images/success.png" alt="success" width="312" height="312">
				 
				 <br><br><br><br> 
				
				<h1>Bill entered successfully!</h1>
				<br><br>
				<h3><a href = "Bill_Insert.jsp">Add Another Bill</a></h3>
				<h3><a href = "BillHome.jsp">Go to Bill home page</a></h3>
			</center>
		</div><!-- showMessageSuccess -->
		
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