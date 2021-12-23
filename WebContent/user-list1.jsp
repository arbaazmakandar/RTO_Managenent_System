<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>RTO list page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<%	
		response.setHeader("Cache-Control","no-cache, no-stored, must-revalidate" ); //HTTP 1.1
	
		response.setHeader("Pragma","no-cache"); //HTTP 1.0
		response.setHeader("Expires","0"); //Proxies
	
		
		if(session.getAttribute("username")==null){
			response.sendRedirect("adminlogin.jsp");
		}
	%>
	<style>
	
	
.navbar a:hover{
  background-color: red;
}
	
	
	</style>
	<header>
		
		
		
		
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00b6bf">
		<a href="welcome.jsp" class="navbar-brand"> RTO
					Management System </a>
  
  	<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
      <li class="nav-item">
        <li><a href="adminloginsuccess.jsp" class="navbar-brand"> Go Back </a></li>
      </li>
    
   				 </ul>
   				 </div>
   				

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   				 <div>
			
				<form action="adminLogout">
					<input type="Submit" class = "btn btn-danger"value="Logout">
					</form>
				</div>
				
  				
</nav>
		
		
		
		
		
		
		
	</header>
	<style>
	.row{
		margin:0;
		
	}
	.table {
	text-align: center;
	}
	
	
	</style>
	<br>

	<div class="row">
	

		<div class="container">
			<h3 class="text-center">List of New Registrations</h3>
			<hr>
			<div class="container text-left">

			
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						  <th>ID </th>
						<th>Owner name</th>
						
					
						<th>Number of Wheels</th>
						<th>Vehicle Model Name</th>
						<th>Temporary Vehicle Number</th>
						
						<th>Current Status</th>
						
						<th>Assigned Vehicle Number</th>
						<th>Registration Date</th>
						<th>Registration Expiry Date</th>
						<th>Amount Paid</th>
					</tr>
				</thead>
				<tbody>
				
				
				
						
				
				
				
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.ownerName}" /></td>
						
							<td><c:out value="${user.numOfWheels}" /></td>
						
							<td><c:out value="${user.modelName}" /></td>
							<td><c:out value="${user.tempNum}" /></td>
							<td><c:out value="${user.status}" /></td>
							
							<td><c:out value="${user.permVehicleNum}" /></td>
							<td><c:out value="${user.regDate}" /></td>
							<td><c:out value="${user.regEndDate}" /></td>
							<td><c:out value="${user.amount}" /></td>
							
							<td><a href="edit?id=<c:out value='${user.id}' />">View</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<!-- <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a> --></td>
						</tr>
						
					</c:forEach>
			
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
