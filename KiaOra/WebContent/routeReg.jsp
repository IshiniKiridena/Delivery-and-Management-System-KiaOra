<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">

<script>	function validateForm(){
		
		
	  
		var Rname=document.myform.Rname.value;
		
		if(Rname==""){
			
			alert("Route name can not be empty !!!!");
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
  				<li>Route Registration</li>
  				
  				
  				
  				
			</ul> 
		</div>
<br><br>   <br>   <br>   
<center>	
 <fieldset> 		
			<h1>Route Registration </h1>
			
<br><br>
		<table>	
		<form action="routeReg" method="post" name="myform" onsubmit="return validateForm()">
	
		
	      <h3>Route name    .<input type="text" name="Rname" id="Rname" placeholder ="Enter new route name"></h3>
		<br>
		<br>
		
		<tr><th>
		<input type="submit" name="sub" value="Register" class="button1">
	</form>	
	</th>
	<th>
	<form action="ViweRoute.jsp" method="post" name="Route details">
	
			<input type="submit" name="sub" value="View Registered route" class="button1">
	
	
	</form>
	</th>
	</tr>
	</table>
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
			
	</div><!-- wrapper -->




</body>

	


</html>