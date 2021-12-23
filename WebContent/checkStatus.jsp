<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>RTO Management Application</title>
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
	
		
		if(session.getAttribute("firstName")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	
	
		<style>
	
	
.navbar a:hover{
  background-color: red;
}
	
	
	</style>
	<header>

		<nav class="navbar navbar-expand-lg navbar-light bg-light"  style=" background-color: #00b6bf">
  <a class="navbar-brand" href="welcome.jsp">RTO Management System</a>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
      <li class="nav-item">
        <a href="welcome.jsp"
					class="nav-link">Go Back</a>
      </li>
     </ul>
     
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
			
				<form action="Logout">
					<input type="Submit" class='btn btn-danger float-right' value="Logout">
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
	
	
	</style>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Registration</h3>
			<hr>
			<div class="container text-left">

			<!-- 	<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Vehicle</a> -->
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
					    <th>ID </th>
						<th>Owner name</th>
						
					
						<th>Number of Wheels</th>
						<th>Vehicle Model Name</th>
						
						<th>Current Status</th>
						
						<th>Assigned Vehicle Number</th>
						<th>Registration Date</th>
						<th>Registration Expiry Date</th>
						<th>Amount Paid</th>
					</tr>
				</thead>
				<tbody>
				
	
				
						
				
				
				
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">
						
					
     					 <c:if test="${user.ownerName eq firstName }">
						    	
						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.ownerName}" /></td>
						
							<td><c:out value="${user.numOfWheels}" /></td>
						
							<td><c:out value="${user.modelName}" /></td>
							
							<td><c:out value="${user.status}" /></td>
							
							<td><c:out value="${user.permVehicleNum}" /></td>
							<td><c:out value="${user.regDate}" /></td>
							<td><c:out value="${user.regEndDate}" /></td>
							<td><c:out value="${user.amount}" /></td>
							<td><a href="checkNewDetails?id=<c:out value='${user.id}' />&ownerName=<c:out value='${user.ownerName}' />">ViewForm</a>
								&nbsp;&nbsp;&nbsp;&nbsp; </td>
							
						</tr>
						
						  </c:if>
					
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
