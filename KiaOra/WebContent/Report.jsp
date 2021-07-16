<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href = "Styles/accountsStyles.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Reports</title>
<style type="text/css">
	table {
  		border-collapse: collapse;
  		width: 60%;
	}

	td {
  		text-align: center;	
	}
	input[type=submit]{
		width : 100%;
		
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
                  <li><a href="adminAccount.jsp">Admin</a></li>
                  <li>Reports</li>
            </ul> 
        </div>    
            
    
        <center>
        	<h1>Select one</h1><br>
        	<div class = "tabluar"></div><!-- tabluar -->
        	<table>
        		<tr>
        			<td>
        				<a href = "Delivery_R_search.jsp">
							<input type = "button" name = "deliveries" value = "Delivery costs">
						</a>
        			</td>
        			<td>
        				<td>
        				<a href = "St_pass_DateAndYear.jsp">
							<input type = "button" name = "stocks" value = "Stock Details">
						</a>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<a href = "RepairReportMonth.jsp">
							<input type = "button" name = "repair" value = "Repaired Items">
						</a>
        			</td>
        			<td>
        				<td>
        				<a href = "emp_report.jsp">
							<input type = "button" name = "salary" value = "Salary Details">
						</a>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<a href = "supmonthselect.jsp">
							<input type = "button" name = "supplier" value = "Supplier Order Details">
						</a>
        			</td>
        			<td>
        				<td>
        				<a href = "expenditureReport.jsp">
							<input type = "button" name = "expend" value = "Expenditures">
						</a>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<a href = "profitReport.jsp">
							<input type = "button" name = "profits" value = "Profits">
						</a>
        			</td>
        			<td>
        				<td>
        				<a href = "shopReport.jsp">
							<input type = "button" name = "shop" value = "Sales of Shop Catering">
						</a>
        			</td>
        		</tr>
        		<tr>
        			<td>
        				<a href = "PersonalReport.jsp">
							<input type = "button" name = "personal" value = "Sales of Personel Delivery">
						</a>
        			</td>
        			<td>
        				<td>
        				<a href = "PromoReport.jsp">
							<input type = "button" name = "promotion" value = "Sales of Promotional Orders">
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