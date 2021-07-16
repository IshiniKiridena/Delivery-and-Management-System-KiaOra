<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <Title>Add Order</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
          	  <script>
    
    function validateForm(){
        
        
        
        var quantity =document.myform.Quantity.value;
        var period=document.myform.Credit_Period.value;
        var amount=document.myform.Amount.value;
        var supplierid =document.myform.SupplierID.value;
        
        if(quantity==""){
            
            alert("Quantity can't be empty!!!!!");
            return false;
            
        
        }else if( period==""){
            
            alert("Credit Period is empty!!!!");
            return false;
        }
        else if(amount==""){
            
            alert("Credit Period is invalide!!!!");
            return false;
            
        }
      else if(supplierid==""){
            
            alert("SupplierIDs is empty!!!!");
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
                  <li>Add Oder</li>
                  
            </ul> 
        </div>

 

 
 <center>
  <fieldset>

            <center>
       
             <h1>Add Order</h1>
             
             <form action="sup_insetAddOrd" method="post" name="myform" onsubmit="return validateForm()">
             
                <table>
                     <tr>
                        <td>Quantity : </td>
                        <td>
                           <input type="text" name="Quantity" id="Company">
                         </td>
                     
                     </tr>
                     <tr>
                        <td>Credit Period : </td>
                        <td>
                           <input type="text" name="Credit_Period" id="Credit_Period">
                         </td>
                      </tr>     
                      <tr>
                        <td>Amount : </td>
                        <td>
                           <input type="number" name="Amount" id="Amount">
                         </td>
                              <tr>
                        <td>SupplierID : </td>
                        <td>
                           <input type="text" name="SupplierID" id="SupplierID">
                         </td>
                      </tr> 
                         <tr>   
                          <td>Date :</td>
                          <td>   
                             <input  type ="date" name = "Date" id="Date" >
                               </td>
                           </tr>   
                       <tr>
                          <td>ModelID : </td>
                          <td>
                        <select name="ModelID" id="Modelid"  id="Modelid"><br>
                      <option value="Singer-rc2L">Singer-rc2L</option>
                     <option value="Singer-rc5L">Singer-rc5L</option>
                     <option value="RichS-gcRS547">RichS-gcRS547</option>
                     <option value="Dimo-flW40">Dimo-flW40</option>
                     <option value="Dimo-flW100">Dimo-flW100</option>
                     <option value="PanaS-ledW15">PanaS-ledW15</option>
                     <option value="PanaS-ledW18">PanaS-ledW18</option>
                     <option value="Innovex-wm7">Innovex-wm7</option>
                     <option value="Sams-TVHD40">Sams-TVHD40</option>
                     <option value="PanaS-TVViver43">PanaS-TVViver43</option>
                    </select>
                       
                       </td>
                          </tr>     
                         
                         </table><br>
                     
                              <input class= "button1" type="submit" name="submit"
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