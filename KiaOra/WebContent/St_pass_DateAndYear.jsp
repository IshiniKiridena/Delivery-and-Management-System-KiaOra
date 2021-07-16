<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>monthly stock report</title>
<link rel="stylesheet" href="Styles/St_header_footer.css">
<link rel="stylesheet" href="Styles/St_form.css">
<script src="JavaScriptSources/St_formBtn.js"></script>
<script src="JavaScriptSources/St_report.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- header -->
		<div class="header">
			<center>
				<img alt="logo" src="images/kiaora_logo.png" width="30%"
					height="30%">
			</center>

		</div>
		<div class="navigation">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Employee Portal</a></li>
				<li><a href="adminAccount.jsp"> Admin Account</a></li>
				<li><a href="#">Reports</a></li>
				<li><a href="#">Stock Handling</a></li>
				<li>Monthly stock report</li>
			</ul>
		</div>

		<!-- -enter year and month -->
		<br> <br>
		<div class="st">
		
			<form action="St_report.jsp" method="post" name="St_pass_DataAndYear" onsubmit="return(validateStreport());">

				<h1>Get stock details report</h1>
				<br>


				<table class="sttable">
					<tr>
						<td><label>Year :</label></td>
						<td><input type="text" name="year" placeholder="2021"></td>
					</tr>
					<tr>
						<td><label>Month : </label></td>
						<td><select name="month">
								<option value="01">January</option>
								<option value="02">February</option>
								<option value="03">March</option>
								<option value="04">April</option>
								<option value="05">May</option>
								<option value="06">June</option>
								<option value="07">July</option>
								<option value="08">August</option>
								<option value="09">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
						</select></td>
					</tr>
				</table>
				<div class="onebtn">
					<!--<input type="submit" id="submitBtn" value="Submit">-->
					<input type="submit" value="Submit">
				</div>

			</form>
		</div>
		<br>


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
	</div>
</body>
</html>
</html>