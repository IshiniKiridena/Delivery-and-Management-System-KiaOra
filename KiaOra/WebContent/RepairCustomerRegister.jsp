<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration For Repair Items</title>
<link rel = "stylesheet" href = "Styles/repair_style2.css"/>
<script> 

	function validateform(){
		
		var name=document.myform.name.value;
		var nic=document.myform.nic.value;
		var AddressLine=document.myform.AddressLine.value;
		var street=document.myform.street.value;
		var city=document.myform.city.value;
		var phone=document.myform.phone.value;
		
		if(name==""){
			
			alert("Name cannot be empty!!");
			return false;	
		}
	
		else if(nic==""){
			alert(" NIC cannot be empty!!!!");
			return false;	
			
		}
		else if(AddressLine==""){
			alert("Customer AddressLine cannot be empty!!");
			return false;	
			
		}
		else if(street==""){
			alert("Customer street cannot be empty!!");
			return false;	
			
		}
		else if(city==""){
			alert("Customer city cannot be empty!!");
			return false;	
			
		}
		else if(phone==""){
			alert("Customer phone cannot be empty!!");
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
                  <li><a href="#">Employee Portal</a></li>
                  <li><a href="#">Admin Account</a></li>
                  <li><a href="RepairHome.jsp">Item Repair Details</a></li>
  					<li>Register Customer</li>
			</ul> 
		</div>

		<div>
		<center>
			
			<form method="post" action="RepairCustomerInsertServlet" name="myform" onsubmit="return validateform()">
			<fieldset>
			
			<h1> Register Repair Customer</h1>
				<br><br><br>
			<div>
			<br>
			<table class="reptbl">
			<tr>
				<td><lable >Customer Name</lable></td>
				<td><input type="text" name="name"><br></td>
			</tr>
			<tr>
				<td><lable >Customer NIC</lable></td>
				<td><input type="text" name="nic"><br></td>
			</tr>
			<tr>
				<td><lable >Address Line</lable></td>
				<td><input type="text" name="AddressLine"><br></td>
			</tr>
			<tr>
				<td><lable >Street</lable></td>
				<td><input type="text" name="street"><br></td>
			</tr>
			<tr>
				<td><lable >City</lable></td>
				<td><input type="text" name="city"><br></td>
			</tr>
			<tr>
				<td><lable >Phone</lable></td>
				<td><input type="text" name="phone"><br></td>
			</tr>
				
			</table>
			<input type ="submit" name= "submit" value="Register">
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
		</div> <!-- footer -->
			
	</div><!-- wrapper -->
</body>
</html>