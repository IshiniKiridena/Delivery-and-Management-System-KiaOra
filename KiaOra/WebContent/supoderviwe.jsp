           <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
         <Title>OderViwe</title> 
         <link rel = "stylesheet" href = "Styles/Supplier_styles.css"/>
          
     <style>  
       th,td {padding : 30px;}
         
     
     </style>   
          
                         
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
                  <li><a href="#">OderViwe</a></li>
                
                  
            </ul> 
        </div>
        
  <center>      
   <fieldset> 
        <center>
 <table>
 <c:forEach  var="odr" items="${supDetails}">
 
    <c:set var="id" value="${odr.id}"/>
    <c:set var="quantity" value="${odr.quantity}"/>
    <c:set var="credit_Period" value="${odr.credit_Period}"/>
    <c:set var="amount" value="${odr.amount}"/>
    <c:set var="supplierID" value="${odr.supplierID}"/>
    <c:set var="date" value="${odr.date}"/>
     <c:set var="modelid" value="${odr.modelid}"/>
 <tr>
  <td>OderID :</td>
  <td>${odr.id}</td>
 </tr><br><br>
  <tr>
  <td>Quantity :</td>
  <td>${odr.quantity}</td>
 </tr><br><br>
 <tr>
  <td>Amount :</td>
   <td>${odr.credit_Period}</td>
  </tr><br><br> 
  <tr>
  <td>Credit_Period :</td>
   <td>${odr.amount}</td>
   </tr><br><br>
  <tr>
   <td>SupplierID :</td>
   <td>${odr.supplierID}</td>  
  </tr><br><br>
    <tr>
   <td>Date :</td>
   <td>${odr.date}</td>  
  </tr><br><br>
  <tr>
   <td>Modelid :</td>
   <td>${odr.modelid}</td>  
  </tr><br><br>
  


 </c:forEach>
  </table>
  
    <c:url value="supoderupdate.jsp" var="supupdate">
        <c:param name="id" value="${id}"/>
        <c:param name="quantity" value="${quantity}"/>
        <c:param name="credit_Period" value="${credit_Period}"/>
        <c:param name="amount" value="${amount}"/>
        <c:param name="supplierID" value="${supplierID}"/>
         <c:param name="date" value="${date}"/>
         <c:param name="modelid" value="${modelid}"/>
        
    </c:url>
    
      <br>
   <br> 
   <br> 
   <br> 
    <a href="${supupdate}">
    <input class="button1" type="button" name="update" value="update">
    </a>
   
    <c:url value="supoderdelete.jsp" var="supdelete">
		<c:param name="id" value="${id}" />
		 <c:param name="quantity" value="${quantity}"/>
        <c:param name="credit_Period" value="${credit_Period}"/>
        <c:param name="amount" value="${amount}"/>
        <c:param name="supplierID" value="${supplierID}"/>
         <c:param name="date" value="${date}"/>
         <c:param name="modelid" value="${modelid}"/>
		
	</c:url>
	<a href="${supdelete}">
	<input class="button3" type="button" name="delete" value="delete">
	</a>
	 <br>
  <br>
    </center>	
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
