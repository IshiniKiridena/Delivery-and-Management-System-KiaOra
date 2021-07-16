<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet" href = "Styles/PromoFormStyle.css"/>
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
  				<li><a href="Home_Page.jsp">Home</a></li>
  				<li><a href="#">Employee Portal</a></li>
  				<li><a href="adminAccount.jsp">Admin Account</a></li>
  				<li><a href="PromoMain.jsp">Promotion</a></li>
  				<li>Delete Customer</li>
			</ul> 
	</div>
	
	<%
		int cusID = Integer.parseInt(request.getParameter("cusID"));
		String name = request.getParameter("name");
		String NIC = request.getParameter("NIC");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		int phoneNo = Integer.parseInt(request.getParameter("phoneNo"));
		String companyName = request.getParameter("companyName");
		String companyAddress = request.getParameter("companyAddress");
	
	%>
	
	
	<div class ="form-wrapper">
	
	<fieldset>
		
		<div class="form-cd1-wrapper">
			<form action="PromoDeleteCustomerServlet" method ="post" class="form-cd1">
			  	<div class="form-element">
			  		<div>
				  		<div class="form-label">
				  			<label>Customer ID</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "proCusID" value = "<%=cusID%>" readonly>
				  		</div>
				  	</div>
			  		<div>
				  		<div class="form-label">
				  			<label>Full Name</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = procusname value = "<%=name%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>NIC</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "procusnic" value = "<%=NIC%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Telephone</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="number" name = "procuscontact" value = "<%=phoneNo%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Address Line</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "promocity" value = "<%=city%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Street</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "promostreet" value = "<%=street%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>City </label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "promocity" value = "<%=city%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Company name</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "procmpanyname" value = "<%=companyName%>" readonly>
				  		</div>
				  	</div>
				  	<div>
				  		<div class="form-label">
				  			<label>Company Address</label>
				  		</div>
				  		<div class="form-input">
				  			<input type ="text" name = "procompaddress" value = "<%=companyAddress%>" readonly>
				  		</div>
				  	</div>
			  	</div>
			  	<div class ="form-submit btn-red">
			  		<input type = "submit" name = "submit" value = "Delete Account">
			  	</div>
			  	
			  </form>
		</div>
	  
	  		
	</fieldset>		

	
</div><!--form-wrapper-->
		
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