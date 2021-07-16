
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
		
		
        if(milage==/^[a-zA-Z]+$/)
        {
           alert("Invalide milage");
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
  				<li><a href="collection.jsp">Delivery information </a></li>
  				<li>New Vehicle Registration </li>
			</ul> 
		</div>

<br>   <br>   <br>   
<center>

<fieldset>
		<h1>New Vehicle Registration </h1><br>

    
     <form action="VinsertServlet" method="post" class="regVehicle" name="myform" onsubmit="return validateForm()" class="bor1" >
    
 
    
    <table>
   <tr>
   <th><h3>Vehicle No</h3></th> <th><input type="text"  name="no" id="no" placeholder="XX-XXXX" ><br><br></th></tr>
    <tr>
    <th><h3>Vehicle type</h3></th> <th> <input type="text"  name="type" id="type" placeholder="Vehicle type"><br><br></th></tr>
    <tr>
   <th> <h3>Vehicle brand</h3></th>  <th><input  type="text" name="brand" name="text" id="brand" placeholder="Vehicle brand"><br><br></th></tr>
    <tr>
    <th><h3>Driven Mileage(Km)</h3></th> <th><input type="number"  name="milage"  id="milage" placeholder="000000"><br><br></th></tr>
     </table>
    <input type="submit" name="car" value="Register " class="button2">
    <br><br>
 

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