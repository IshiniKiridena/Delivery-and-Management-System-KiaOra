<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>

<script>
		function validateLogin(){
			var euid=document.emplog.euid.value;
			var epass=document.emplog.epass.value;
			
			if(euid==""){
				alert("Username field cannot be empty!");
				return false;
			}else if(epass==""){
				alert("Password field cannot be empty!");
				return false;
			}
		}
	</script>

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
  				<li>Employee Login</li>
			</ul> 
		</div>

	<div class="emploginform">
	<center>
	<h1>Enter Login Credentials</h1>
	<form action="EmpLoginServlet" method="post" name="emplog" onsubmit="return validateLogin()">
	<fieldset>
	
	
	<div class = "billformInner">
		UserName<input type="text" name="euid"><br>
	
	
		Password<br><input type="password" name="epass"><br><br>
	
		<input type="submit" name="submit" value="Login">
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
			
	</div><!-- wrapper -->
	
</body>
</html>