<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Update</title>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>

<script>
		
		function validateForm(){
			var nic=document.myform.empid.value;
			var name=document.myform.empname.value;
			var address=document.myform.empadd.value;
			var phone=document.myform.empphne.value;
			var position=document.myform.emppos.value;
			var uid=document.myform.empun.value;
			var pw=document.myform.emppw.value;
			
			
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
			}
		}
		
	</script>

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
  				<li><a href="emp_search.jsp">Search</a></li>
  				<li><a href="#">UserAccount</a></li>
  				<li>Employee Update</li>
			</ul> 
		</div>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String position = request.getParameter("position");
		String saldate = request.getParameter("saldate");
		Double basicsal = Double.parseDouble(request.getParameter("basicsal"));
		Double targetcovered = Double.parseDouble(request.getParameter("targetcovered"));
		Double targetsales = Double.parseDouble(request.getParameter("targetsales"));
		int commision = Integer.parseInt(request.getParameter("commision"));
		
		
	%>

<div class="empregform">
<center>
	<h1>Update Employee Details</h1>
	<form action="EmpUpdateServlet" method="post" name="myform" onsubmit="return validateForm()">
	<fieldset>
	<div class="billformInner">
	Employee NIC<input type="text" name="empid" value="<%=id%>"readonly><br>
	Employee Name<input type="text" name="empname" value="<%=name%>"><br>
	Employee User name<input type="text" name="empun" value="<%=username%>"><br>
	Employee Password<input type="text" name="emppw" value="<%=password%>"><br>
	Employee Address<input type="text" name="empadd" value="<%=address%>"><br>
	Employee Phone<input type="text" name="empphne" value="<%=phone%>"><br>
 	Position :<select name="emppos"  value="<%=position%>">
			<option>Select Position</option>
			<option>Sales Representative</option>
			<option>Manager</option>
			<option>Administrator</option>
			<option>Driver</option>
		</select><br><br>
	Salary Date<input type="date" name="empdate" value="<%=saldate%>"><br>
	Basic Salary<input type="text" name="empbsal" value="<%=basicsal%>"><br>
	Target Covered<input type="text" name="emptc" value="<%=targetcovered%>"><br>
	Target Assigned<input type="text" name="empts" value="<%=targetsales%>"><br>
	Commission<input type="text" name="empcom" value="<%=commision%>"><br>
	
	<input type="submit" name="submit" value="Update Emp Data">
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