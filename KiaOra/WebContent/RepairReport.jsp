<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
//String connectionUrl = "jdbc:mysql://localhost:3306/kiaora?autoReconnect=true&useSSL=false";
String database = "kiaora";
String userid = "root";
String password = "1234Ishini";
//String password = "kaveetha1996";
String year = request.getParameter("year");
String month = request.getParameter("month");
try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link rel = "stylesheet" href = "Styles/repair_style2.css"/>
</head>
<body>
<div class = "wrapper">
	
		<div class = "header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
		
		
		<div>
		<center>
</head>
<body>

    
    <div id="repdetails">
        <center><h2>Monthly Repair Item Details Report</h2></center><br><br>
        <p style="width:50% 25%">Date&Time:<%=new Date().toString() %></p>
        <table border="1" id="mytreport">
            <tr>
                <th>Item Name</th>
                
              
                <th>Total Cost</th>
                
                
    
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "Select ritemName,sum(amount) from kiaora.repair_item where returningDate like '"+year+"-"+month+"%'group by ritemName;";
            
               // String sql = "Select ri,sum(amount) from kiaora.repair_item where returningDate like '"+year+"-"+month+"%' group by ritemName;";
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("ritemName")%> </td>
                <td><%=resultSet.getString("sum(amount)")%></td>
                
                
                
            </tr>
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
        </table>
        <br><br>
    </div>
    <center><button onclick="print()" class="button1"><b>Download PDF</b></button></center><br><br>
    </div>
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