<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <Title>Supplier payment</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
</head>
<body>
     <div class = "wrapper">
    
        <div class = "header">
           
                <img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
            
        </div>
        
        <div class  = "navigation">
            <ul class="breadcrumb">
                  <li><a href="adminAccount.jsp">Home</a></li>
                  <li><a href="supHome.jsp">Supplier Home</a></li>
                 <li>OderDelete</li>
                 
            </ul> 
        </div>
     
  <center>    
     <fieldset> 
           <center>
               <%
		String id = request.getParameter("id");
		String quantity = request.getParameter("quantity");
		String amount = request.getParameter("amount");
		String credit_Period = request.getParameter("credit_Period");
		String supplierID = request.getParameter("supplierID");
		String date = request.getParameter("date");
		String modelid = request.getParameter("modelid");
		
	%>
               
             <h1>Delete</h1>
             
             <form action="supoderdelete_servlet" method="post">
               <table>
               SupOID   <input type="text" name="id" value="<%= id  %>"readonly><br>
               Quantity   <input type="text" name=quantity value="<%= quantity %>"readonly><br>
               Amount   <input type="text" name="amount" value="<%= amount  %>"readonly><br>
               Credit_Period   <input type="text" name="credit_Period" value="<%= credit_Period  %>"readonly><br>
               SupplierID   <input type="text" name="supplierID" value="<%= supplierID  %>"readonly><br>                            
                Date   <input type="text" name="date" value="<%= date  %>"readonly><br>
                  Modelid   <input type="text" name="modelid" value="<%= modelid  %>"readonly><br>   
                       
                </table><br>
                       
                     
                              <input class="button1" type="submit" name="delete"
                               value="delete"><br>
                                
              <br><br>                    
      </center>
            </form>
               </center> 
             </center>
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
