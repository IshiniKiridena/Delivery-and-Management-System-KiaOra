<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href = "Styles/accountsStyles.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Manager Account</title>
<style type="text/css">
	table {
  		border-collapse: collapse;
  		width: 40%;
	}

	td {
  		text-align: center;	
	}
</style>
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
                  <li><a href="emp_login.jsp">Employee Portal</a></li>
                  <li>Manager Account</li>
            </ul> 
        </div>    
            
    
        <center>
        	<h1>Welcome!</h1><br>
        	<h2>Please select one : </h2><br>
        	<div class = "tabluar"></div><!-- tabluar -->
        	<table>
        		<tr>
        			<td><img src="images/workers.png" alt="employeee" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "emphome.jsp">
							<input type = "button" name = "Employee" value = "Employees">
						</a>
					</td>
				</tr>
				<tr>
        			<td><img src="images/inventory.png" alt="stocks" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "supHome.jsp">
							<input type = "button" name = "Supplier" value = "Suppliers">
						</a>
					</td>				
				</tr>
				<tr>
        			<td><img src="images/warehouse.png" alt="warehouse" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "St_Home.jsp">
							<input type = "button" name = "Stock" value = "Stocks">
						</a>
					</td>
				</tr>
				<tr>
        			<td><img src="images/invoice.png" alt="invoice" height = "40%" widht = "40%"></img></td>
					<td>
						<a href = "BillHome.jsp">
							<input type = "button" name = "bills" value = "Showroom Bills">
						</a>
					</td>
				</tr>
        	</table>
        	</div><!-- tabluar -->
		</center>
    	<br><br>
    	<div class = "footer clearfix">
                <p>Copyright©2021 KIAORA Enterprises</p><ul>
                    <li><a href = "#">Facebook</a></li>
                    <li><a href = "#">Twitter</a></li>
                    <li><a href = "#">Instagram</a></li>
                    <li><a href = "#">RSS feed</a></li>
                </ul>
            </div> <!-- footer -->
            
    </div><!-- wrapper -->    

 

</body>
</html>