<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <Title>Update</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
          		  <script>
    
    function validateForm(){
        
        
    	 var supplierid  =document.myform.id.value;
        var company =document.myform.companyname.value;
        var phone=document.myform.phone.value;
        var address=document.myform.address.value;
        
        if(supplierid==""){
            
            alert("supplierid can't be empty!!!!!");
            return false;
            
        
        }else if(company==""){
            
            alert("company is empty!!!!");
            return false;
        }
        else if(phone==""){
            
            alert("Phone is invalide!!!!");
            return false;
            
        }
        else if(address==""){
            
            alert("Address is empty!!!!");
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
                  <li><a href="supplierdetails.jsp">Viwe</a></li>
                  <li>Update</li>
                  
            </ul> 
        </div>

 

 

 <center>
  <fieldset> 

            <center>
               <%
		String id = request.getParameter("id");
		String companyName = request.getParameter("companyName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
	%>
               
             <h1>Update</h1>
             
             <form action="update_servlet" method="post" name="myform" onsubmit="return validateForm()">
             
               SupplierID   <input type="text" name="id" value="<%= id  %>"><br>
               CompanyName   <input type="text" name="companyname" value="<%= companyName %>"><br>
               Phone   <input type="text" name="phone" value="<%= phone  %>"><br>
               Address   <input type="text" name="address" value="<%= address %>"><br><br>                           
                      
                         
                       
                     
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