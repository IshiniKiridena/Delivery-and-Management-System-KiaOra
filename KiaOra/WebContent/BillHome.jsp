<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href = "Styles/accountsStyles.css">
<script src="JavaScriptSources/Shopscript.js"></script>
<title>Showroom</title>
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
                  <li><a href="#">Employee Portal</a></li>
                  <li><a href="adminAccount.jsp">Admin Account</a></li>
                  <li>Showroom</li>
            </ul> 
        </div>    
            
    
        <center>
        	<h1>Showroom bills can be accessed here</h1><br>
        	<h2>Please select one : </h2><br>
        	<div class = "tabluar"></div><!-- tabluar -->
        	<fieldset>
	        	<table>
	        		<tr>
	        			<td><img src="images/addBill.png" alt="addBill" height = "40%" widht = "40%"></img></td>
						<td>
							<a href = "Bill_Insert.jsp">
								<input type = "button" name = "addBill" value = "Add New Bills">
							</a>
						</td>
					</tr>
					
	        		<tr>
	        			<td><img src="images/search.png" alt="searchBill" height = "40%" widht = "40%"></img></td>
						<td>
							<a href = "BillSearch.jsp">
								<input type = "button" name = "searchBill" value = "Search Bills">
							</a>
						</td>
					</tr>
					
	        		<tr>
	        			<td><img src="images/view.png" alt="allbills" height = "40%" widht = "40%"></img></td>
						<td>
							<a href = "BillViewAll.jsp">
								<input type = "button" name = "viewAll" value = "View All Bills">
							</a>
						</td>
					</tr>
	        	</table>
        	</fieldset>
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