<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New models</title>
<link rel="stylesheet" href="Styles/St_form.css">
<link rel="stylesheet" href="Styles/St_header_footer.css">
<link rel="stylesheet" type="text/css" href = "Styles/Shopstyle.css">
<script src="JavaScriptSources/St_formBtn.js"></script>

</head>
<body >
	<div class="wrapper">
	<!-- header -->
	<div class="header">
		<center>
			<img alt="logo" src="images/kiaora_logo.png" width="30%" height="30%">
		</center>

	</div>
	<div class="navigation">
		<ul class="breadcrumb">
			<li><a href="#">Home</a></li>
            <li><a href="#">Employee Portal</a></li>
            <li><a href="adminAccount.jsp"> Admin Account</a></li>
			<li><a href="St_Home.jsp">Stock Handling</a></li>
			<li>Add new model</li>
		</ul>
	</div>

	<!-- form  -->
	<h1 align="center">Add new models</h1>
	<br>
	<div class="st">

		<form action="modelInsert_servlet" method="post" name="St_insertNewModel" onsubmit="return(validateStform());">
			<div >
				<br>
				<table class="sttable">
				<tr>
					<td><label>ModelID:</label></td>
					<td> <input type="text" name="modelID" placeholder="Dimo-flw50"></td>
				</tr>
				<tr>
					<td><label>Brand: </label></td>
					<td> <input type="text" name="brand" placeholder="Dimo"></td>
				</tr>
				<tr>
					<td><label>Category: </label></td>
					<td> <input type="text" name="category" placeholder="flashLight-50w" ></td>
				</tr>
				<tr>
					<td><label>Unit Price: </label></td>
					<td><input type="text" name="unitprice" placeholder="1000.00"  ></td>
				</tr>
				<tr>
					<td><label>Warranty: </label></td>
					<td><input type="text" name="warranty" placeholder="2y" pattern="[0-9]+[my]" ></td>
				</tr>
				<tr>
					<td><label>Quantity: </label></td>
					<td><input type="text" name="quantity" value=0 pattern="[0-9]"></td>
				</tr>
				<tr>
					<td><label>Minimum ItemLimit:</label></td>
					<td><input type="text" placeholder="100" name="mil" ></td>
				</tr>
				</table>
				<br>
				<input class="inputStyle" id="checkBox" type="checkbox"
					onclick="enableButton()" > <b><i>Insert new items to the stock.</i></b><br />
				<br />
				<div class="twobtn">
					<input type="submit" id="submitBtn" value="Submit" disabled>
					<input type="reset" id="resetBtn" value="Clear">
				</div>
			</div>
		</form>
	</div>
	
	</div>
	<!-- footer -->
	<div class="footer clearfix">
		<p>Copyright©2021 KIAORA Enterprises</p>
		<ul>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="#">RSS feed</a></li>
		</ul>
	</div>
</body>
</html>