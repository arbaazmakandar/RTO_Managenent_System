<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
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
		<div class="container col-md-8">
		<div class="card">
			<div class="card-body">
				<caption>
					<h2>Create a User Account</h2>
				</caption>
  <form action="<%= request.getContextPath() %>/registerK" method="post">
   <table style="width: 100%">
    <tr>
     <td> FirstName LastName (separated by " "(space))</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
 
   <input  type="hidden" name="lastName" /></td>
   
    <tr>
     <td>Email</td>
     <td><input type="email" name="email" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="number" name="contact" /></td>
    </tr>
   </table>
   <input type="submit" class='btn btn-success float-right'  value="Submit" />
   
  </form>
 </div>
 	</div>
		</div>
		</div>
</body>
</html>