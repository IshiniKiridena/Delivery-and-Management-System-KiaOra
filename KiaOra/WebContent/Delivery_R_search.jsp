<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Month search</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">
<script src="JavaScriptSources/St_search.js"></script>


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
  				<li>Month select  </li>
			</ul> 
		</div>

<br>   <br>   <br>   
<center>





<center>





 <center>
 
 <fieldset>
     <h1>Month Select</h1>
     <br><br>
	
		<form name="RE_month" action="Delivry_cost.jsp" method="post">	
			<select name="Month" id="Month">
			
 				 <option value="2021-01">January</option>
  				 <option value="2021-02">February</option>
                 <option value="2021-03">March</option>
                <option value="2021-04">Aprail</option>
                <option value="2021-05">May</option>
                <option value="2021-06">June </option>
                <option value="2021-07">July </option>
                <option value="2021-08">August</option>
                <option value="2021-09">September</option>
                <option value="2021-10">October </option>
                <option value="2021-11">November </option>
                <option value="2021-12">December</option>
            </select>
            
            
         <br><br>   
          <input type="submit" value="submit" class="button2">  
		</form>
</fieldset>
</center>



</body>
	
	
	<div class="hv">  </div>
	<!-- footer -->
	<div class="footer clearfix">
		<p>Copyright©2021 KIAORA Enterprises</p>
		<ul>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="#">RSS feed</a></li>
		</ul>
	</div>
</html>