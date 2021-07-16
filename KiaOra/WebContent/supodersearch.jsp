<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <Title>Oder Search</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
          
               		  <script>
    
    function validateForm(){
        
        
        
        var details =document.myform.Supplier_Details.value;
       
        
        if(details==""){
            
            alert("Please enter Oder ID!!!");
            return false;
           }
       
    }
      
    
</script>		     
             
             
                
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
                  <li><a href="adminAccount.jsp">Home</a></li>
                  <li><a href="supHome.jsp">Supplier Home</a></li>
                  <li>Supplier Oder Details Search</li>
                 
            </ul> 
        </div>

 

 

 <center>
 <fieldset>
            <center>
       
             <h1>Search</h1>
             
             <form action="supodersearch_servlet" method="post" name="myform" onsubmit="return validateForm()">
             
                <table>
                     <tr>
                        <td>Supplier Oder ID : </td>
                        <td>
                           <input type="text" name="Oder_Details">
                         </td>
                     
                     </tr>
                                             
                      
                         
                         </table><br>
                     
                              <input class="button1" type="submit" name="search"
                               value="Search">
                                
                             
       </center>
            </form>
             <fieldset>
             </center>
      
       <br>
  <br>
   <br> 
   <br> 
   <br>  
     <br> 
    <br>  
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