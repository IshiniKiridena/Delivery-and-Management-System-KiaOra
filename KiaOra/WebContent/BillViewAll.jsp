<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Bills</title>
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
                <li><a href="BillHome.jsp">Showroom</a></li>
                <li>View All Bills</li>
			</ul> 
		</div> <br><br>
		
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/kiaora"
        user="root" password="1234Ishini"
    />
     
    <sql:query var="listBills"   dataSource="${myDS}">
        SELECT * FROM showroom_bill;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Bills</h2></caption>
            <tr>
                <th>Bill code</th>
                <th>Utility Type</th>
                <th>Due Date</th>
                <th>Status</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Month</th>
            </tr>
            <c:forEach var="bill" items="${listBills.rows}">
                <tr>
                    <td><c:out value="${bill.bill_code}" /></td>
                    <td><c:out value="${bill.utility_type}" /></td>
                    <td><c:out value="${bill.dueDate}" /></td>
                    <td><c:out value="${bill.status}" /></td>
                    <td><c:out value="${bill.amount}" /></td>
                    <td><c:out value="${bill.date}" /></td>
                    <td><c:out value="${bill.month}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    
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
</body>
</html>