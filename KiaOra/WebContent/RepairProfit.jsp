<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/repair_style2.css"/>
<script> 

	function validateform(){
		
		var cusID=document.myform.cusID.value;
		var ritemName=document.myform.ritemName.value;
		var warranty_status=document.myform.warranty_status.value;
		var damageDescription=document.damageDescription.street.value;
		var amount=document.myform.amount.value;
		var returningDate=document.myform.returningDate.value;
		
		
		if(cusID==""){
			
			alert("customer ID cannot be empty!!");
			return false;	
		}
		else if(ritemName==""){
			
			alert("Name cannot be empty!!");
			return false;	
		}
	
		else if(warranty_status==""){
			alert(" status cannot be empty!!!!");
			return false;	
			
		}
		else if(damageDescription==""){
			alert("Description cannot be empty!!");
			return false;	
			
		}
		else if(amount==""){
			alert("amount cannot be empty!!");
			return false;	
			
		}
		else if(returningDate==""){
			alert("date cannot be empty!!");
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
  					<li>Profit Calculate</li>
			</ul> 
		</div>

		<div>
		<center>
			
			
			<form method="post" action="RepairProfitInsert"name="myform" onsubmit="return validateform()">
			<fieldset>
			
			<h1> Calculate profit </h1>
				<br><br><br>
			<div>
			<br>
			<table class="reptbl">
			
			<td><label>Month : </label></td>
                        <td><select name="month">
                                <option value="January">January</option>
                                <option value="February">February</option>
                                <option value="March">March</option>
                                <option value="April">April</option>
                                <option value="May">May</option>
                                <option value="June">June</option>
                                <option value="July">July</option>
                                <option value="August">August</option>
                                <option value="September">September</option>
                                <option value="Octomber">October</option>
                                <option value="November">November</option>
                                <option value="December">December</option>
                        </select></td>
			<tr>
				<td><lable >Total Cost</lable></td>
				<td><input type="text" name="tot"><br></td>
			</tr>
			<tr>
				<td><lable >Actual Cost</lable></td>
				<td><input type="text" name="actu"><br></td>
			</tr>

				
			</table>
			<input type ="submit" name= "submit" value="Calculate">
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