<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <Title>Update</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
          		  <script>
    
    function validateForm(){
        
        
    	 var orderid  =document.myform.id.value;
        var quantity =document.myform.quantity.value;
        var credit_Period=document.myform.amount.value;
        var amount=document.myform.amount.value;
        var supplierID=document.myform.supplierID.value;
        
        if(orderid==""){
            
            alert("orderid can't be empty!!!!!");
            return false;
            
        
        }else if(quantity==""){
            
            alert("quantity is empty!!!!");
            return false;
        }
        else if(phone==""){
            
            alert("credit_Period is invalide!!!!");
            return false;
            
        }
        else if(address==""){
            
            alert("Amount is empty!!!!");
            return false;
        }   
        else if(supplierID==""){
                
                alert("SupplierID is empty!!!!");
                return false;
            
        }
    }

</script>      
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
                  <li><a href="supsearch.jsp">Search</a></li>
                  <li><a href="supplierdetails.jsp">OderViwe</a></li>
                  <li>Update</li>
                  
            </ul> 
        </div>

 

 

 <center>
  <fieldset> 

            <center>
    <%
        int id = Integer.parseInt(request.getParameter("id"));   
		String quantity = request.getParameter("quantity");
		String credit_Period = request.getParameter("credit_Period");
		String amount = request.getParameter("amount");
		String supplierID = request.getParameter("supplierID");
		String date = request.getParameter("date");
		String modelid = request.getParameter("modelid");
	%>
               
             <h1>Update</h1>
             
             <form action="oderupdate_servlet" method="post" name="myform" onsubmit="return validateForm()">
               OrderID    <input  type="text" name="orderid" value="<%=id%>"readonly><br>
               Quantity   <input type="text" name="quantity" value="<%=quantity%>"><br>
               Credit_Period   <input type="text" name="credit_Period" value="<%=amount%>"><br>
               Amount   <input type="text" name="amount" value="<%=credit_Period%>"><br>
               SupplierID   <input type="text" name="supplierID" value="<%= supplierID %>"><br>
               Date   <input type="text" name="date" value="<%=date%>"><br>
               Modelid   <input type="text" name="modelid" value="<%=modelid%>"><br><br>                           
                      
                         
                       
                     
                              <input class= "button1" type="submit" name="search"
                               value="update"><br>
                                
                                  
  </center>    
            </form>
              <fieldset> 
             </center>
            <br>
        <br>
        <br>
 

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
</html>