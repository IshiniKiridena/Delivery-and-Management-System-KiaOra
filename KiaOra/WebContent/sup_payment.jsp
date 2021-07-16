<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <Title>Supplier payment</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
       		  <script>
    
    function validateForm(){
        
        
        
        var amount =document.myform.amount.value;
        var date=document.myform.date.value;
        var supplierId=document.myform.SupplierID.value;
        
        if(amount==""){
            
            alert("Amount is invalide!!!");
            return false;
            
        
        }else if(date==""){
            
            alert("Date is invalide!!!");
            return false;
        }
        else if(supplierId==""){
            
            alert("SupplierId is empty!!!");
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
                  <li>Supplier Payment</li>
            </ul> 
        </div>


 <center>
<fieldset>
            <center>
       
             <h1>Supplier payment</h1>
             
             <form action="sup_payment" method="post" name="myform" onsubmit="return validateForm()">
             
                <table>
                     <tr>
                        <td>Amount : </td>
                        <td>
                           <input  type="number" name="amount">
                         </td>
                     
                     </tr>
                                             
                     <tr>   
                          <td>Date :</td>
                          <td>   
                             <input  type ="date" name = "date" >
                               </td>
                           </tr>
                           <tr>
                              <tr>
                        <td>SupplierID : </td>
                        <td>
                           <input type="text" name="SupplierID">
                         </td>
                      </tr>    
                      
                         
                         </table><br>
                     
                              <input class="button1" type="submit" name="submit"
                               value="Submit">
                                
                <br><br>                 
       </center>
            </form>
             </fieldset>
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