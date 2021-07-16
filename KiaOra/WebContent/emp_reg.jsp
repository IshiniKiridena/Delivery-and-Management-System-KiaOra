<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Register</title>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>

<script>
		
		function validateForm(){
			var nic=document.myform.nic.value;
			var name=document.myform.name.value;
			var address=document.myform.address.value;
			var phone=document.myform.phone.value;
			var position=document.myform.position.value;
			var uid=document.myform.uid.value;
			var pw=document.myform.pw.value;
			
			var pw=document.myform.pw.value;
			var pw2=document.myform.pw2.value;
			
			
			if(nic==""){
				alert("NIC can't be empty!");
				return false;
			}else if(name==""){
				alert("Name can't be empty!");
				return false;
			}else if(address==""){
				alert("Address can't be empty!");
				return false;
			}else if(phone==""){
				alert("Phone can't be empty!");
				return false;
			}else if(position=="Select Position"){
				alert("Select employee position");
				return false;
			}else if(uid.length<5){
				alert("Username must be at least 5 characters long!");
				return false;
			}else if(pw.length<6){
				alert("Password must be at least 6 characters long!");
				return false;
			}else if(pw != pw2){
				alert("Password did not match! Try again!");
				return false;
			}
		}
		
	</script>
	
	<style type="text/css">
		table{
			border-collapse:collapse;
			width:100%;
			
		}
		th,td{
			text-align:center;
			padding:30px;
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
  				<li><a href="emp_login.jsp">Employee Portal</a></li>
 				<li><a href="adminAccount.jsp">Admin Account</a></li>
  				<li><a href="emphome.jsp">EmployeeHome</a></li>
  				<li>Employee Register</li>
			</ul> 
		</div>
		
		<div class="empregform">
		<center>
	<h1>Enter New Employee</h1>
	<form action="EmployeeRegServlet" method="post" name="myform" onsubmit="return validateForm()">
	<fieldset>
	<table>
	<div class="billformInner">
		<tr><td>NIC :</td><td><input type="text" name="nic"></td></tr>
		<tr><td>Name :</td><td><input type="text" name="name"></td></tr>
		<tr><td>Address :</td><td><input type="text" name="address"></td></tr>
		<tr><td>Phone No :</td><td><input type="text" name="phone"></td></tr>
		<tr><td>Position :</td><td><select name="position">
			<option>Select Position</option>
			<option>Sales Representative</option>
			<option>Manager</option>
			<option>Administrator</option>
			<option>Driver</option>
		</select></td></tr>
		<tr><td>UserName :</td><td><input type="text" name="uid"></td></tr>
		<tr><td>Password :</td><td><input type="password" name="pw"></td></tr>
		<tr><td>Confirm Password</td><td><input type="password" name="pw2"></td></tr>
		</div>
		
		</table>
		<br><br>
		<center><input type="submit" name="submit" value="Create Employee"></center>
		</fieldset>
	</form>

</center>
</div>
<div class = "wrapper">
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
		</div>
</body>
</html>