<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">

<script>
	function validateForm(){
		
	var Cname=document.myform.Cname.value;
	var Vno=document.myform.Vno.value;
	var Date=document.myform.Date.value;
	var cost=document.myform.cost.value;

		if(Cname==""){
			
			alert("Route id is empty!!!!");
			return false;
		}else if(Vno==""){
			
			alert("Vehicle no is empty");
			return false;
			
		}else if(Vno.length>8 ){
			
			alert("Vehicle no is invalide!!!!!");
			return false;
		
		
		}else if(Date==""){
			
			alert("Date is empthy");
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
                  <li><a href="adminAccount.jsp">Admin Account</a></li>
				
  				<li><a href="collection.jsp">Delivery information</a></li>
  			   <li>Vehicle cost</li>
  				
			</ul> 
		</div>
<center> 
 <fieldset>

			<center>	<h1>Vehicle cost</h1> </center>
<br><br>
    <form action="costservelet" method="post" name="myform" onsubmit="return validateForm() ">
    <center>
  		<table >
  		<tr>
  		  <th ><h3>Route ID</h3></th><th><h3><input type="text" name="Cname" id="Cname" placeholder="Route name"></h3></th>
  		</tr>
  		<tr>
  		  <th><h3>Vehicle No</h3></th><th><input type="text" name="Vno" id="Vno" placeholder="vehicle no"></th>
  		</tr>
  		  <tr>
    	  <th><h3>Date</h3></th><th><input type="date" name="Date" id="Date" class="date1" ></th>
    	  <tr>
    
    	  <th><h3>Vehicle cost</h3></th><th><input type="number" name="cost" id="cost" placeholder="Vehicle cost"></th>
    	  </tr>
    	  </table><br>   
    	  <input type="submit" name="sybmit" value="submit" class="button2">
<br><br>
</center> 
   
    </form>
     </fieldset>
     </center> 
<div class="hv">  </div>

  	<div class = "footer clearfix">
			<p>Copyright©2021 KIAORA Enterprises</p>

			<ul> 
				<li><a href = "#">Facebook</a></li>
				<li><a href = "#">Twitter</a></li>
				<li><a href = "#">Instagram</a></li>
				<li><a href = "#">RSS feed</a></li>
			</ul>
		</div> <!-- footer -->
			
	<!-- wrapper -->


</body>
</html>