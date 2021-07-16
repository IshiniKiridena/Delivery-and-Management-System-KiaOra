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
                 <li>Delete</li>
                 
            </ul> 
        </div>
     
  <center>    
     <fieldset> 
           <center>
               <%
		String id = request.getParameter("id");
		String name = request.getParameter("companyName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
	%>
               
             <h1>Delete</h1>
             
             <form action="delete_servlet" method="post">
               <table>
               SupplierID   <input type="text" name="id" value="<%= id  %>"readonly><br>
               CompanyName   <input type="text" name="companyname" value="<%= name %>"readonly><br>
               Phone   <input type="text" name="phone" value="<%= phone  %>"readonly><br>
               Address   <input type="text" name="address" value="<%= address  %>"readonly><br>                            
                      
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
