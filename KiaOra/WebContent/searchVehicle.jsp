<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Search vehicle</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">

 
 
 <script>
	
	function validateForm(){
		
		
		
		var no=document.myform.no.value;
		
		if(no==""){
			
			alert("vehicle No can't be emprty!!!!!");
			return false;
			
		}else if(no.length>8 ){
			
			alert("Vehicle no is invalide!!!!!")
		}
	}


</script>
 
 
 
 
</head>
<body>
    
    	<div class = "wrapper">
	
		<div class = "header">
			
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  			<li><a href="#">Home</a></li>
                  <li><a href="#">Employee Portal</a></li>
                  <li><a href="adminAccount.jsp">Admin Account</a></li>
				
  				 <li><a href="collection.jsp">Delivery information</a></li>
  				<li>vehicle search</li>
			</ul> 
		</div>
    
 <br>
 <br>   
 <br>      
   <center> 
   
    <form action="vehicleSearchServelet" method="post" name="myform" onsubmit="return validateForm()"> 
 <fieldset>   
    <br>
   
    
 					<h1>Search vehicle details</h1>  
    <br><br><br>
    <table><tr>
          <th><h2> Vehicle No</h2> </th><th><input type="text" name="no" id="no" placeholder="XX-XXXX" ></th>
		   </tr>
	 	 	          
   </table>      
       <br>   
                <input type="submit" name="but"  value="Search"  class="button2">
       
    <br><br><br><br>
    
 </fieldset> 
    </form>
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