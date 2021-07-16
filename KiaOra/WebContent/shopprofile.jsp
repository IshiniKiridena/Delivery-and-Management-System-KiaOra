<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	  <%@ taglib prefix="shop" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<title>Shop Details</title>
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
  				<li><a href="http://localhost:8090/KiaOra/adminAccount.jsp">Account</a></li>
  				<li><a href="shopHomeServlet">Shop Catering</a></li>
  				<li><a href="http://localhost:8090/KiaOra/shopSearch.jsp">Search Shop</a></li>
  				<li>Shop Profile</li>
			</ul> 
		</div>	
			
	<!--Display Shop Details-->
		
	<form method = "post"  action="shopUpdateandDelete">
	
		<center>
		<div class="shopform">
		<h1>Shop Profile</h1>
		<br>
		<div name= "credential_error" class = "credential_error" align = "center">${errorMsg} </div>
		<div name= "successfulMsg" class = "successfulMsg" align = "center">${successfulMsg} </div>
		<br>	
		
		<shop:forEach var="shop" items="${sDetails}">
		
		<table>
		
		<tr>
		<td><label >Shop ID </label></td>
		<td>
		<input type="text" class="input-box"  name="id" value="${shop.id}" readonly>
		</td>
		</tr>
		
		<tr>
		<td><label >Shop Name </label></td>
		<td>
		<input type="text" class="input-box"  name="shopname"  value="${shop.shopname}" readonly>
		</td>
		</tr>
		
		<tr>
		<td><label >Owner's name</label></td>
		<td>
		<input type="text" class="input-box"  name="ownername"  value="${shop.ownername}" readonly>
		</td>
		</tr>
		
		<tr>
				<td><label >Address </label></td>
				<td>
				<input type = "text" class="input-box"  name="addressLine1"  value="${shop.addressLine1}" readonly> 
				</td>
		</tr>
		<tr>
				<td></td>
				<td>
				<input type = "text"  class="input-box"  name="addressStreet"   value="${shop.addressStreet}" readonly> 
				</td>
		</tr>
		<tr>
				<td></td>
				<td>
				<input type ="text" class="input-box"  name="addressCity"  value="${shop.addressCity}" readonly> 
				</td>
		</tr>
		
		<tr>
		<td><label >E-mail </label></td>
		<td>
		<input type="text" class="input-box"  name="email" value="${shop.email}" readonly>	
		</td>
		</tr>
	
		<tr>
		<td><label >Phone </label></td>
		<td>
		<input type="text" class="input-box"  name="phone"  value="${shop.phone}" readonly>		
		</td>
		</tr>
		
		<tr>
		<td><label >Registered Date </label></td>
		<td>
		<input type="text" class="input-box"  name="registeredDate" value="${shop.registeredDate}" readonly>		
		</td>
		</tr>
		
		</table>
				
			<a href ="${shopUpdate}">
				<button class="btn1" type="submit"  value="update" name="update" >Update</button> 
			</a>
		
			<button class="btn1" style="background-color: #ff3e3e;margin: 40px 40px 30px 30px;" type="submit"  value="delete" name="delete"  >Delete</button> 	
		
			<shop:url value ="updateShop.jsp" var="shopUpdate">
	
			<shop:param name="id" value ="${id}"/>
			<shop:param name="shopname" value ="${shopname}" />
			<shop:param name="ownername" value ="${ownername}" />
			<shop:param name="addressLine1" value ="${addressLine1}" />
			<shop:param name="addressStreet" value ="${addressStreet}" />
			<shop:param name="addressCity" value ="${addressCity}" />
			<shop:param name="email" value ="${email}" />
			<shop:param name="phone" value ="${phone}" />
			<shop:param name="registeredDate" value ="${registeredDate}" />
			</shop:url>
		
		
	
	</shop:forEach>
	
	
	
	
	
			</div>
			</center>
		</form>
		
		<br>
		
		
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