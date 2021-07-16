<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/repair_style2.css"/>
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
  				<li><a href="#">Home</a></li>
                  <li><a href="#">Employee Portal</a></li>
                  <li><a href="adminAccount.jsp">Admin Account</a></li>
                  <li><a href="RepairHome.jsp">Item Repair Details</a></li>
  				
  				
  				<li>Search Item Details</li>
			</ul> 
		</div>

		<div>
		<center>

				<h1>Search for Item </h1><br>
				<form action="RepairItemSearchServlet" method="post" name = "RepairItemSearch ">
				
	                		
	                			<fieldset>
	                			
	                			Customer ID :<input type="text" name="cusID"><br>
								  			
								
	                			
		           				<input type="submit" class="button" value="Search Item" name = "searchitem">
		           			
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
</body>
</html>