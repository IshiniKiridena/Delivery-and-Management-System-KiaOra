<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profits</title>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<link rel = "stylesheet" href = "Styles/bill_styles.css"/>
<style type="text/css">
/*table*/
	table {
  		border-collapse: collapse;
  		width: 80%;
  		background-color: white;
  		
	}

	th, td {
  		text-align: left;
  		padding: 8px;
  		border-radius: 5px;
	}
	th{
		background-color: #04406c;
		color: white;
	}
	button{
		background-color: #04406c;
	 	border: none;
	 	color: white;
	 	padding: 15px 32px;
	 	text-align: center;
	  	text-decoration: none;
	  	display: inline-block;
	  	font-size: 16px;
	  	margin: 4px 2px;
	  	cursor: pointer;
	  	border-radius: 5px;
	}
	button:hover {
		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	}

</style>
</head>
<body>

	<div class = "wrapper">
	
	<div id = 'profit'>
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
	
	<br><br><br><br><br>
		
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/kiaora"
        user="root" password="1234Ishini"
    />
     
    <sql:query var="listProf"   dataSource="${myDS}">
        SELECT * FROM profit;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Profit Report</h2></caption>
            <tr>
                <th>Profit ID</th>
                <th>Income Category</th>
                <th>Amount</th>
                <th>Month</th>
            </tr>
            <c:set var = "profitTotal" value = "${0}"/>
            <c:forEach var="prof" items="${listProf.rows}">
                <tr>
                    <td><c:out value="${prof.profitID}" /></td>
                    <td><c:out value="${prof.income_category}" /></td>
                    <td><c:out value="${prof.amount}" /></td>
                    <td><c:out value="${prof.month}" /></td>
                </tr>
             <c:set var = "profitTotal" value = "${profitTotal + prof.amount}"/>
            </c:forEach>
        </table>
        
        <br><br>
        
        <h3>Total profits : Rs<c:out value = "${profitTotal}"/>/=</h3>
        <br><br>
        Generated Date : <%= (new java.util.Date()).toLocaleString()%>
    	<br><br>
    </div>
    </div><!-- profits -->
    <center>
    	<button onclick="printProfits()">Download PDF</button>
    	
    	<br><br>
	
		<a href = "Report.jsp"><h5>Access more reports</h5></a>
	</center>
	
	
	
    <br><br><br>
    
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
	
	    
    <script type="text/javascript">
	    	function printProfits(){
			    var element = document.getElementById('profit');
			    var opt = {
			      margin:       1,
			      filename:     'Profits_Report.pdf',
			      image:        { type: 'jpeg', quality: 0.98 },
			      html2canvas:  { scale: 2 },
			      jsPDF:        { unit: 'in', format: 'letter', orientation: 'landscape' }
			    };
			     
			    // New Promise-based usage:
			    html2pdf().from(element).set(opt).save();
    		}
    </script>
    
</body>
</html>