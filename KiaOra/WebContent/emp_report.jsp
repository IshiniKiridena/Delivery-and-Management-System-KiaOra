<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Report</title>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<link rel = "stylesheet" href = "Styles/employee_styles.css"/>
<style type="text/css">
	body{
    	background: white;
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
 
<div align="center" id = "employee">
	<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>

		<br><br>
		<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/kiaora"
        user="root" password="1234Ishini"
    />
    
 
     
    <sql:query var="employeelist"   dataSource="${myDS}">
        SELECT e.emp_id,e.emp_name,e.emp_address,e.emp_phone,e.emp_position,s.sal_date,s.basic_sal,s.target_covered,s.target_sales,s.commision,s.total_salary 
        FROM employee e, emp_salary s
        WHERE e.emp_id=s.emp_id;
    </sql:query>

	
        <table border="1" cellpadding="5">
            <caption><h2>Employee Details</h2></caption>
          
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Position</th>
			<th>Salary Date</th>
			<th>Basic Salary</th>
			<th>Target Covered</th>
			<th>Target Assigned</th>
			<th>Commision</th>
			<th>Total Salary</th>
		</tr>
		<c:forEach var="emp" items="${employeelist.rows}">
                <tr>
                    <td><c:out value="${emp.emp_id}" /></td>
                    <td><c:out value="${emp.emp_name}" /></td>
                    <td><c:out value="${emp.emp_address}" /></td>
                    <td><c:out value="${emp.emp_phone}" /></td>
                    <td><c:out value="${emp.emp_position}" /></td>
                    <td><c:out value="${emp.sal_date}" /></td>
                    <td><c:out value="${emp.basic_sal}" /></td>
                    <td><c:out value="${emp.target_covered}" /></td>
                    <td><c:out value="${emp.target_sales}" /></td>
                    <td><c:out value="${emp.commision}" /></td>
                    <td><c:out value="${emp.total_salary}" /></td>
                </tr> 
            </c:forEach>
	</table>
			<br><br>
            Generated Date : <%= (new java.util.Date()).toLocaleString()%>
            <br><br>
        </div>
            
    <center>
    	<button onclick="printEmployee()">Download PDF</button>
    </center>
            
		<div class = "footer clearfix">
			<p>Copyright©2021 KIAORA Enterprises</p>

		</div> 
		
		<script type="text/javascript">
	    	function printEmployee(){
			    var element = document.getElementById('employee');
			    var opt = {
			      margin:       1,
			      filename:     'Employee_Report.pdf',
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