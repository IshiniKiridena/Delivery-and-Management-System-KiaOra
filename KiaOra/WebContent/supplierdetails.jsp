           <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
         <Title>Viwe</title> 
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
                  <li><a href="supsearch.jsp">Search</a></li>
                <li>Viwe</li>
                  
            </ul> 
        </div>
        
  <center>      
   <fieldset> 
        <center>
 <table>
 <c:forEach  var="sup" items="${supDetails}">
 
    <c:set var="id" value="${sup.id}"/>
    <c:set var="companyName" value="${sup.companyName}"/>
    <c:set var="phone" value="${sup.phone}"/>
    <c:set var="address" value="${sup.address}"/>
 
 <tr>
  <td>SupplierID :</td>
  <td>${sup.id}</td>
 </tr><br><br>
 <tr>
  <td>CompanyName :</td>
   <td>${sup.companyName}</td>
  </tr><br><br> 
  <tr>
  <td>SupplierPhone :</td>
   <td>${sup.phone}</td>
   </tr><br><br>
  <tr>
   <td>SupplierAddress :</td>
   <td>${sup.address}</td>  
  </tr><br><br>



 </c:forEach>
  </table>
  
    <c:url value="sup_update.jsp" var="supupdate">
        <c:param name="id" value="${id}"/>
        <c:param name="companyName" value="${companyName}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="address" value="${address}"/>
        
        
    </c:url>
    
      <br>
   <br> 
   <br> 
   <br> 
    <a href="${supupdate}">
    <input class="button1" type="button" name="update" value="update">
    </a>
   
    <c:url value="sup_delete.jsp" var="supdelete">
		<c:param name="id" value="${id}" />
		<c:param name="companyName" value="${companyName}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="address" value="${address}" />
		
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
