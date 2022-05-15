<%@page import="userService.user"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="Views/user.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/payment.js"></script>
</head>
<body>

	<div class="container"><div class="row"><div class="col-sm">
		  	
		<h1>User Management..</h1>
		<hr>
		<br>
		
		<form id="formItem" name="formItem">
				
				<div class="col-sm">
					Payment ID: 
					<input type="text" id="userID" name="userID" class="form-control form-control-sm">
				</div>
				<div class="col-sm">
					 <br> First Name: 
					 <input id="firstName" name="firstName" type="text" class="form-control form-control-sm">
				</div>
				
				<div class="col-sm">
					 <br> Last Name: 
			 		<input id="lastName" name="lastName" type="text" class="form-control form-control-sm">
				</div>
		
			
				<div class="col-sm">
					<br> Address: 
			 		<input id="address" name="address" type="text" class="form-control form-control-sm">		
			 	</div>

				<div class="col-sm">
					<br> Type: 
			 		<input id="type" name="type" type="text" class="form-control form-control-sm">
			 	</div>
			
			<br>
			<input type="hidden" id="hidItemIDSave" name="hidItemIDSave">
			<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">			
		</form>
		<br>
		
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		
		<br>
		
		<div id="divItemsGrid">
			<%
				user userObj = new user(); 
				out.print(userObj.readUser()); 
			%>
		</div>
	</div></div></div>
</body>
</html>