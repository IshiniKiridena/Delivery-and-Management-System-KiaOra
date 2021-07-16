<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>stock Handling</title>
<link rel="stylesheet" href="Styles/St_header_footer.css">
<link rel="stylesheet" href="Styles/St_form.css?version5">
<script src="JavaScriptSources/St_formBtn.js"></script>
</head>
<body>
<div class = "wrapper">
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
			<li>Stock Handling</li>
		</ul>
	</div>
	<br>
	
	<br>
	<!-- boxes  -->

	<div id="box" class="split ad">
		<a href="St_insertNewModel.jsp" class="go"><h3>
				<br> <br>Insert new models
			</h3></a>
	</div>
	<div id="box" class="split cd">
		<a href="St_search_delete.jsp" class="go"><h3>
				<br>
				<p>Search models</p> <br> 
				<p>Delete models</p><br>
				<p>Update models</p>
			</h3></a>
	</div>
	<div id="box" class="split bd">
		<a href="St__ViewSupOrders.jsp" class="go"><h3>
				<br>
					<p>Read supplier orders</p><br>
					<p>Update stock</p><br>
					<p>insert items</p><br>
			</h3></a>
	</div>
	
	<!-- <div id="box" class="split dd">
		<a href="St_itemtable.jsp" class="go"><h3>
				<br><br>Read Item table
			</h3></a>
	</div>-->
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	 <div class="footer clearfix" class="split bottom">
		<p>Copyright©2021 KIAORA Enterprises</p>
		<ul>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="#">RSS feed</a></li>
		</ul>
	</div>
	</div>
</body>
</html>