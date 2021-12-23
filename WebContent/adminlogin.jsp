<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<style>
	
	
.navbar a:hover{
  background-color: red;
}
	
	
	</style>
	<header>
		
		
		
		
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00b6bf">
		<a href="index.jsp" class="navbar-brand"> RTO Management System </a>
  
</nav>
		
		
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<caption>
					<h2>Admin Login Page </h2>
				</caption>


				<form action="<%=request.getContextPath()%>/adminlogin" method="post">
					<label>Enter username:</label> <input type="text"
						class="form-control" name="username"><br> <br> <label>Enter
						Password:</label> <input type="password" class="form-control" name="password"><br>
					<input type="submit" class='btn btn-primary' value="login" >
					
						
				</form>
				
				





			</div>
		</div>
	</div>
</body>
</html>