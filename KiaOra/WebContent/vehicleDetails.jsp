 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/vehicle/deco.css">

</head>
<body>



    	<div class = "wrapper">
	
		<div class = "header">
		
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			
		</div>
		</div>
		<div class  = "navigation">
			<ul class="breadcrumb">
			
				<li><a href="#">Home</a></li>
                  <li><a href="#">Employee Portal</a></li>
                 <li><a href="adminAccount.jsp">Admin Account</a></li>
			
  				<li><a href="collection.jsp">Delivery information</a></li>
  				<li><a href="searchVehicle.jsp">vehicle search</a></li>
  				<li><a href="vehicleDetails.jsp">vehicle Details</a></li>
  				<li><a href="updateVehicle.jsp">Update Vehicle</a></li>
			</ul> 
		</div>



<br><br>
<center>
<fieldset> 

	<h1>Vehicle Category</h1>
		
		<br><br>

   
    


  
  

 <form action="sendUpdate" method="post"> 
      <table>
      
 <c:forEach var="cus" items="${cusDetails}">
  <tr >
  
  <th  >Vehicle No </th>
  <th > <input type="text"   name="no" value="${cus.no}" readonly>  </tr>
  
  
 
  <tr >
  <th >Vehicle name </th>
  <th >   <input type="text"   name="type" value="${ cus.type} " readonly> </th>
  </tr>
  
  <tr >
  <th >Vehicle  brand</th>
  <th >  <input type="text"   name="brand" value="${cus.brand} " readonly></th>
  
  </tr>
  
  <tr >
  <th   > Vehicle Mileage(Km) </th>
  <th >   <input type="number"   name="milage" value="${cus.milage}" readonly></th>
  </tr>
  </center>
  </c:forEach>
 </table> 
 
 
 <table>

  <tr><th>
 <c:url value="updateVehicle.jsp" var="VDetails">
 
		<c:param name="no" value="${no}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="brand" value="${brand}"/>
		<c:param name="milage" value="${milage}"/>
	
	</c:url>
	
	 
	  
	<a href="${VDetails}">
	<input type="submit" name="update" value="Update Details" class="button1">
	</a>
	</form>
	
</th>	
 
 
 
 
<th>
  

 <form action="VehicledeleteServlet" method="post">   

 <% String no=request.getParameter("no"); %>

<input type="hidden" name="no" value="<%=no %>"readonly>

    <input type="submit" name="submit" value="Delete Vehicle" class="button3">

</form>
</th>
</tr>
 </table>
 <br>
  
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