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
		
		
		
		var no  =document.myform.no.value;
		var type=document.myform.type.value;
		var bra=document.myform.brand.value;
		var milage=document.myform.milage.value;
		
		if(no==""){
			
			alert("vehicle No can't be empty!!!!!");
			return false;
			
		}else if(no.length>8 ){
			
			alert("Vehicle no is invalide!!!!!");
			return false;
		
		}else if(type==""){
			
			alert("Vehicle type is empty!!!!");
			return false;
		}
		else if(bra==""){
			
			alert("Vehicle brand is empty!!!!");
			return false;
			
		}else if(milage==""){
			
			alert("Vehicle mailage is empty!!!!");
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
  				<li><a href="searchVehicle.jsp">vehicle search</a></li>
  				<li><a href="vehicleDetails.jsp">vehicle Details</a></li>
  				<li>Update vehicle</li>
  				
			</ul> 
		</div>
<br>   <br>   <br>   

<center>
  <fieldset> 

	    <% String no=request.getParameter("no");
		String type=request.getParameter("type");
		String brand=request.getParameter("brand");		
		String milage=request.getParameter("milage");
		%>
		
	<h1>Update Vehicle Details</h1>
	<br>
	<br>
		
		
        <form action="vehicleUpdate" method="post" name="myform"onsubmit="return validateForm()" >
        
        <table >  
			<tr > 
				<th >Vehicle NO </th> <th ><input type="text" name="no" id="no" value="<%= no %>"readonly></th></tr>
				
          	<tr >
          		<th >Vehicle Type</th> <th ><input type="text" name="type" id="type" value="<%=type%>"readonly></th></tr>
          	
	 		<tr >
	 			<th >Vehicle Brand</th> <th ><input type="text" name="brand" id="brand" value="<%= brand%>"readonly></th></tr> 
	 			
		<tr > 
				<th >Vehicle Mileage(km)</th> <th ><input type="number" name="milage" id="milage" value="<%= milage%>"></th></tr>
		</table><br>
 
                <input type="submit" name="submit"value="Update" class="button2"><br><br>

		</form>
	  </fieldset> 
	  <br>
<center>

<div class="hv"1>  </div>

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







