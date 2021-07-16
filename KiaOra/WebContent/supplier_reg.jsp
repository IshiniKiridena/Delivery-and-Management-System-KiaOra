<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
	     <Title>Supplier Registration</title> 
	     <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
		  <script>
    
    function validateForm(){
        
        
        
        var company =document.myform.Company.value;
        var phone=document.myform.Sup_phone.value;
        var address=document.myform.Sup_Address.value;
        
        if(company==""){
            
            alert("Company Name can't be empty!!!!!");
            return false;
            
        
        }else if(phone==""){
            
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
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%" >
			</center>
		</div>
		</div>
		
		<div class  = "navigation">
			<ul class="breadcrumb">
  				<li><a href="adminAccount.jsp">Home</a></li>
  				<li><a href="supHome.jsp">Supplier Home</a></li>
  				<li>Supplier Registration</li>
  				
  				
  				
			</ul> 
		</div>
 <center>
  <fieldset>
       <center>
	         <h1>Supplier Registration</h1>
			 
			 <form action="Supplier_insertServelt" method="post" name="myform" onsubmit="return validateForm()">
			 
			    <table>
				    <tr>
					   <td>Company Name : </td>
					   <td>
					      <input type="text" name="Company" id="Company" >
					  </td>
					</tr>
					
					 <tr>
					    <td>Phone : </td>
						<td>
						   <input type="number" name="Sup_phone"id="Sup_phone">
						 </td>
					  </tr>	 
					  <tr>
					    <td>Address : </td>
						<td>
						   <input type="text" name="Sup_Address" id="Sup_Address">
						 </td>
						 </tr>
						 
					<tr>
					    <td></td>
						<td>
						    <br><input class="button2" type="submit" name="submit"  value="Register">
						 </td>
						 </tr>
						 
						 <br>
	
			    </table>
	<br><br>		    
	   </center>
	       </form>
	       </fieldset>
	   </center>
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