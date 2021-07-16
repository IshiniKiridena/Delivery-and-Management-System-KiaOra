<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "Styles/Promoreport.css"/>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/html2pdf.bundle.min.js"></script>

</head>
<body id="content">

<div class = "wrapper">
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
		
		
		
		
	<div class="table-wrapper">	
		<table>
		<c:forEach var ="promo_report" items ="${promo_report}">
			
			<h2>Report of ${promo_report.yearMonth} (Company Promotional)</h2>
			
				
						
				<tr>
					<td>
						Orders
					</td>
					<td>
						${promo_report.numberofOrder}
					</td>
				</tr>
				<tr>
					<td>
						Completed Orders
					</td>
					<td>
						${promo_report.numberofComplete}
					</td>
				</tr>
				<tr>
					<td>
						Incompleted Orders	
					</td>
					<td>
						${promo_report.numberofUncomplete}
					</td>
				</tr>
				
				<tr>
					<td>
						Profit
					</td>
					<td>
						${promo_report.profit}
					</td>
				</tr>
				
				<tr>
					<td>
						
					</td>
					<td>
						<button id="download-rpt">Download Report</button>
					</td>
				</tr>
				
		
				
			</c:forEach>
		</table>
		
		
	</div>
	<div id="editor"></div>
		
		
	
	  <script>
   

    
    
   
   
    </script>
	
	<script>
		
	
	
	    $('#download-rpt').click(function () {
	    	var element = document.getElementById('content');
	    	$("#download-rpt").hide();
	    	//html2pdf(element);
	    	
	    	var opt = {
   			  margin:       3,
   			  filename:     'myfile.pdf',
   			  image:        { type: 'jpeg', quality: 0.98 },
   			  html2canvas:  { scale: 2 }
   			};

   			// New Promise-based usage:
   			//html2pdf().set(opt).from(element).save();

   			// Old monolithic-style usage:
   			html2pdf(element, opt);
   			$("#download-rpt").show();
	    	
	    });
	
	    // This code is collected but useful, click below to jsfiddle link.
	</script>

		
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