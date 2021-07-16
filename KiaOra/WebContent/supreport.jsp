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
<title>Insert title here</title><link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
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
        <center><h2>Monthly Oder Item Details Report</h2></center><br><br>
        <p style="width:50% 25%">Date&Time:<%=new Date().toString() %></p>
        <table border="1" id="mytreport">
            <tr>
                <th>Model ID</th>
                <th>Amount</th> 
                <th>Credit Period</th>
                <th>SupplierID</th>
                <th>Oder Items</th>
                
                
    
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "Select modelID,Amount,Credit_Period,SupplierID,sum(Quantity) from kiaora.sup_order where Date like '"+year+"-"+month+"%'group by modelID;";
            
              
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("modelID")%> </td>
                <td><%=resultSet.getString("Amount")%> </td>
                <td><%=resultSet.getString("Credit_Period")%> </td>
                <td><%=resultSet.getString("SupplierID")%> </td>
                <td><%=resultSet.getString("sum(Quantity)")%></td>
                
                
                
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
 
    </center>
        
        
        </div>
           </div>
    <center><button onclick="print()" class="button1"type="submit" name="submit"
                       value="Submit"><b>Download PDF</b></button></center><br><br>
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