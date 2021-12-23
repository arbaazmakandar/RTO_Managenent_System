<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RTO Management System</title>
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
	
	
	
	body {background-color: coral;}
	</style>
	
			
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#7ebf62">
		<a href="index.jsp" class="navbar-brand"> RTO Management System </a>
  
  	<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
      <li class="nav-item">
        <a href= "<%= request.getContextPath() %>/employeeregister.jsp" class="navbar-brand">Register User</a>
      </li>
      <li class="nav-item">
			<a href= "<%= request.getContextPath() %>/login.jsp" class="navbar-brand">User Log In</a>
      </li>
       <li class="nav-item">
			<a href= "<%= request.getContextPath() %>/adminlogin.jsp" class="navbar-brand">Admin Log In</a>
      </li>
   				 </ul>
  				</div>
</nav>
	
			
			
			<h1 style="color:blue;text-align:center; margin-top: 10%; font-size: 80px">Welcome to Online RTO Management</h1>
</body>
</html>