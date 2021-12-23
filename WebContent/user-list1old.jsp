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
	
	.thead{
  text-align: center;
  padding: 5px;
	}
	
	</style>
	<br>

	<div class="row">
	

		<div class="container">
			<h3 class="text-center">List of Registration for Renew</h3>
			<hr>
			<div class="container text-left">

			
			</div>
			<br>
			<table class="table table-bordered">
				<thead class="thead">
					<tr>
						<th>ID</th>
						<th>Owner name</th>
					
						<th>Vehicle Model Name</th>
						<th>Current Status</th>
						
						<th>Old Vehicle Number</th>
						<th> New Vehicle Number</th>
						<th> New Registration Date</th>
						<th> New Registration Expiry Date</th>
					
					</tr>
				</thead>
				<tbody>
				
				
				
						
				
				
				
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.ownerName}" /></td>
							<td><c:out value="${user.modelName}" /></td>
							<td><c:out value="${user.status}" /></td>
							<td><c:out value="${user.permVehicleNum}" /></td>
							<td><c:out value="${user.newPermVehicleNum}" /></td>
							<td><c:out value="${user.newRegDate}" /></td>
							<td><c:out value="${user.newRegEndDate}" /></td>
					
							<td><a href="oldedit?id=<c:out value='${user.id}' />">View</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<!-- <a
								href="olddelete?id=<c:out value='${user.id}' />">Delete</a> --></td>
						</tr>
						
					</c:forEach>
			
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
