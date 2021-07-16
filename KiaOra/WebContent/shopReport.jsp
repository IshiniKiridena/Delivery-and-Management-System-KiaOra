<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="shop" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import ="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script src="JavaScriptSources/Shopscript.js"></script>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css">
    <script type="text/javascript">
        
        $(function() {
            $('.date-picker').datepicker( {
            	changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                dateFormat: 'yy-MM',
                monthNames: ["01","02","03","04","05","06","07","08","09","10","11","12"],
                monthNamesShort: ["01","02","03","04","05","06","07","08","09","10","11","12"],
                maxDate: new Date(),
                onClose: function(dateText, inst) { 
                	var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1));
            }
            });
        });
        
        
    </script>
    <style>
    .ui-datepicker-calendar {
        display: none;
    }
    </style>
    
<title>Shop Report</title>
</head>
<body >

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
  				<li>Shop Report</li>
			</ul> 
		</div>	
		
		<br>
		<br>
		
		<!-- Get Date -->
		
			<form method = "post" action = "shopReportHandler" >
				<br>		
				<div class="shopform" style="width: 50%; margin-top:20px; ">	
						<center>
						
						<div name= "errorMsg" class = "errorMsg" align = "center">${errorMsg} </div>
						
						<label for="startDate" style="font-size: 20px;">Select month and year :</label>
						
			   			<input name="startDate" style="height:40px;
													  padding: 10px;
													  border: 1px solid;
													  margin: 4px 2px;" id="startDate" class="date-picker" required>
			   			
			   			<button type="submit" class="btn1"  id="submitbtn" value="Submit"  name="submit" >Search</button>
			   			
			   			</center>
					<br>
					<br>		
			
				</div>
			</form>	
		
		<!-- Shop report -->
		
		<shop:if test="${hide.equals('none')}">

		<form method = "post" action = "shopReportHandler">
		
		<div id="reportPDF">
				<p style="width: 50%;margin:0% 5%">Date&Time:<%=new Date().toString()%> </p> 	
				<h1>Shop Report</h1>
				<br>
				
				<h2> Shop's Order Details</h2>
				<br>
				<center>
					<table id ="table" class="ordertable" style="width:90%;margin-left:5%;margin-right: 5%; " align="Center">
					
					<tr>
						<th>Shop ID</th>
						<th>Order ID</th>
						<th>Item Name</th>
						<th>Quantity</th>
						<th>Total Amount(Rs.)</th>
						<th>Ordered Date</th>
						<th>Due Date</th>
						<th>Status</th>
					</tr>
					
					<shop:forEach var="order" items="${oDetails}">
					
						<tr>
							<td><input type="text" class="inputbox3" name="orderID" value="${order.shopID}" readonly></td>
							<td><input type="text" class="inputbox3" name="orderID" value="${order.orderID}" readonly></td>
							<td><input type="text" class="inputbox3" name="modelID" value="${order.modelID}" readonly></td>
							<td><input type="text" class="inputbox3" name="quantity" value="${order.quantity}" readonly></td>
							<td><input type="text" class="inputbox3" name="totPayment" value="${order.totPayment}" readonly></td>
							<td><input type="text" class="inputbox3" name="orderDate" value="${order.orderDate}" readonly></td>
							<td><input type="text" class="inputbox3" name="dueDate" value="${order.dueDate}" readonly></td>
							<td><input type="text" class="inputbox3" name="status" value="${order.status}" readonly></td>
						
						</tr>
					
					</shop:forEach>
					
					</table>
				
					
					</center>
			
					
			<!-- Max order --> 
					
					<shop:forEach var="Maxorder" items="${MaxorderDetails}">
						
						<table class="ordertable2" style="margin:10px 0 auto 20%;">
						<th>Maximum Order</th>
							<tr>
								<td><label>Shop Name :</label> ${Maxorder.shopName}</td>
							</tr>
							<tr>
								<td><label>Total Amount :</label> ${Maxorder.amount}</td>
							</tr>
						</table>
					</shop:forEach>
					
					<br>
					<br>
					
			<!-- Min order --> 
					
					<shop:forEach var="Minorder" items="${MinorderDetails}">
						
						<table  class="ordertable2" style="margin:10px 0 auto 20%;">
						<th>Minimum Order</th>
							<tr>
								<td><label>Shop Name :</label>  ${Minorder.shopName} </td>
							</tr>
							<tr>
								<td><label>Total Amount :</label>  ${Minorder.amount}  </td>
							</tr>
						</table>
					</shop:forEach>
					
					<br>
					
					<!-- Profit earned in last month --> 
					<div style="margin:10px 10px 10px 20%; font-size: 20px;">
					<label>Total profit earned (Rs.) :</label>   ${profit}
					</div>
		</div>
					
					<br>
					<br>
		
		
			
	</form>
	
	<center> <button class="btn2" onclick="print()">Download Report</button> </center>
	
	<!-- Generate a report -->
	
	<script type="text/javascript">
	
	function print(){
	
		var element = document.getElementById("reportPDF");
		var opt = {
		  margin:       1,
		  filename:     'shopMonthlyReport.pdf',
		  image:        { type: 'jpeg', quality: 0.98 },
		  html2canvas:  { scale: 2 },
		  jsPDF:        { unit: 'in', format: 'letter', orientation: 'landscape' }
		};
		 
		// New Promise-based usage:
		html2pdf().from(element).set(opt).save();
	
	}
	
	</script>

	
		
	</shop:if>	
	
	
	
			
			
			<div class = "footer clearfix" style="margin-top: 25%;">
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