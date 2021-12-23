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
	
		
		if(session.getAttribute("username")==null){
			response.sendRedirect("adminlogin.jsp");
		}
	%>
	
	<style>
			
	
	
.navbar a:hover{
  background-color: red;
}
	

		
		table{
		  border-collapse: separate;
		border-spacing: 0 18px;
		margin-top: -350px;
		
		}
		td{
			padding-left: 10px;
			padding-right:10px;}
		#userfields {
		font-size: 20px;
		border-bottom: 1px solid #000;
		padding-bottom: 3px	
		
		}
		.extend{
		width: 200%;}
		
		label {  
		width: 200%; }
		
		.buttonHolder{ text-align: center; }
		
		</style>
		

		
		
				
	<header>
		
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00b6bf">
		<a href="adminloginsuccess.jsp" class="navbar-brand"> RTO Management System </a>
  
  	<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
 
				<li><a href="adminloginsuccess.jsp"
					class="nav-link">Home</a></li>
			
    
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
			
				<form action="Logout">
					<input type="Submit"  class='btn btn-danger float-right'  value="Logout">
					</form>
				</div>
			</div>
				
  				
</nav>
		
		
	</header>
<br/><br/>
	<div class="container col-md-8">
		<div class="card">
			<div class="card-body">
			
				<c:if test="${user != null}">
					<form action="oldupdate" method="post" class="center">
				</c:if>
				<c:if test="${user == null}">
					<form action="oldinsert" method="post">
				</c:if>
				

				<caption>
					<h1><u>
						<c:if test="${user != null}">
            			Registration Details
            		</c:if>
						<c:if test="${user == null}">
            			Add Registration
            		</c:if></u>
					</h1>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<fieldset class="form-group">
				<table class="center">
				<tr>
					<td><label>ID :-   </label></td> <td><label  id = "userfields"><c:out value='${user.id}' /></label></td> 
					<!-- <input type="text"
						value="<c:out value='${user.id}' />" class="form-control"
						name="id" required="required" disabled> -->
				</tr>
				</fieldset>
				

			<fieldset class="form-group">
			
			<tr>
					<td><label>Owner Name:- </label></td> <td> <label id = "userfields"> <c:out value='${user.ownerName}'/></label></td>
					
					<!-- <input type="text"
						value="<c:out value='${user.ownerName}' />" class="form-control"
						name="ownerName" required="required" readonly="readonly">-->
						
						</tr>
				</fieldset>
				
						
				<fieldset class="form-group">
					<tr>
					<td><label>Aadhar Number :- </label></td><td> <label id = "userfields"> <c:out value='${user.aadharNum}'/></label></td>
					<!--  <input type="number"
						value="<c:out value='${user.aadharNum}' />" class="form-control"
						name="aadharNum"readonly="readonly" > -->
						</tr>
				</fieldset>
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Odometer Reading (Kilometers) :- </label> </td><td> <label id = "userfields"> <c:out value='${user.kmsRan}'/></label></td>
					<!-- <input type="text"
						value="<c:out value='${user.kmsRan}' />" class="form-control"
						name="kmsRan" readonly="readonly"> -->
						</tr>
				</fieldset>
				
					
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Model Name :-</label> </td><td>  <label id = "userfields"> <c:out value='${user.modelName}'/></label></td>
					<!--  <input type="text"
						value="<c:out value='${user.modelName}' />" class="form-control"
						name="modelName" readonly="readonly"> -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Manufacturer's Name :- </label></td><td>  <label id = "userfields"> <c:out value='${user.manufacName}'/></label></td>
					<!-- <input type="text"
						value="<c:out value='${user.manufacName}' />" class="form-control"
						name="manufacName"readonly="readonly" > -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Manufactured Date :- </label> </td><td> <label id = "userfields"> <c:out value='${user.manufacDate}'/></label></td>
					<!--  <input type="text"
						value="<c:out value='${user.manufacDate}' />" class="form-control"
						name="manufacDate" readonly="readonly"> -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Chasis Number :-</label></td><td>  <label id = "userfields"> <c:out value='${user.chasisNum}'/></label></td>
					<!-- <input type="number"
						value="<c:out value='${user.chasisNum}' />" class="form-control"
						name="chasisNum" readonly="readonly"> -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Engine Number :- </label> </td><td> <label id = "userfields"> <c:out value='${user.engineNum}'/></label></td>
					<!-- <input type="text"
						value="<c:out value='${user.engineNum}' />" class="form-control"
						name="engineNum"readonly="readonly" >-->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Color :-</label> </td><td> <label id = "userfields"> <c:out value='${user.color}'/></label></td>
					<!-- <input type="text"
						value="<c:out value='${user.color}' />" class="form-control"
						name="color" readonly="readonly"> -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Seating Capacity :-</label></td><td><label id = "userfields"> <c:out value='${user.seatingCap}'/></label></td>
					  <!--  <input type="number"
						value="<c:out value='${user.seatingCap}' />" class="form-control"
						name="seatingCap" readonly="readonly"> -->
						</tr>
				</fieldset>	
				
								<fieldset class="form-group">
								<tr>
									<td>
										<label>Number of Wheels :-</label> </td><td> <label id = "userfields"> <c:out value='${user.numOfWheels}'/></label></td>
										<!-- <input type="text"
											value="<c:out value='${user.numOfWheels}' />" class="form-control"
											name="numOfWheels" readonly="readonly"> -->
											</tr>
									</fieldset>	
									
									
									 	<fieldset class="form-group">
									 	<tr>
					<td>
											<label>Type of Fuel :-</label></td><td> <label id = "userfields"> <c:out value='${user.typeOfFuel}'/></label></td>
											 <!--  <input type="text"
												value="<c:out value='${user.typeOfFuel}' />" class="form-control"
												name="typeOfFuel" readonly="readonly"> -->
												</tr>
										</fieldset>	
										
								<fieldset class="form-group">
					<tr>
					<td>
					<label>Type of Vehicle :-  </label> </td><td> <label id = "userfields"> <c:out value='${user.vehicleType}'/></label></td>
					
					<!-- <input type="text"
						value="<c:out value='${user.vehicleType}' />" class="form-control"
						name="vehicleType" readonly="readonly"> -->
						</tr>
				</fieldset>			
														
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Insurance Policy Number :-</label> </td><td> <label id = "userfields"> <c:out value='${user.insurancePolicyNum}'/></label></td>
					
			<!-- 		<input type="text"
						value="<c:out value='${user.insurancePolicyNum}' />" class="form-control"
						name="insurancePolicyNum" readonly="readonly"> -->
						</tr>
				</fieldset>
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Insurance issuing Company Name :-</label></td><td> <label id = "userfields"> <c:out value='${user.insuranceCompany}'/></label></td>
					<!--  <input type="text"
						value="<c:out value='${user.insuranceCompany}' />" class="form-control"
						name="insuranceCompany" readonly="readonly"> -->
						</tr>
				</fieldset>
				
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Old Vehicle Number :-</label> </td><td> <label id = "userfields"> <c:out value='${user.permVehicleNum}'/></label></td>
					<!-- 
					 <input type="text"
						value="<c:out value='${user.permVehicleNum}' />" class="form-control"
						name="permVehicleNum" readonly="readonly" > -->
						</tr>
				</fieldset>
				
				
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label> Old Registration Expiry Date :-</label></td><td> <label id = "userfields"> <c:out value='${user.regExpiryDate}'/></label></td>

					<!--  <input type="text"
						value="<c:out value='${user.regExpiryDate}' />" class="form-control"
						name="regExpiryDate"readonly="readonly" > -->
						</tr>
				</fieldset>	
				
					
				
				
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>PUC Certificate Number :-</label></td><td><label id = "userfields"> <c:out value='${user.PUCNo}'/></label></td>
					<!--   <input type="text"
						value="<c:out value='${user.PUCNo}' />" class="form-control"
						name="PUCNo"readonly="readonly" > -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>PUC Certificate Issue Date :-</label> </td><td> <label id = "userfields"> <c:out value='${user.PUCissueDt}'/></label></td>
					<!-- <input type="text"
						value="<c:out value='${user.PUCissueDt}' />" class="form-control"
						name="PUCissueDt"readonly="readonly" > -->
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>PUC Certificate Expiry Date :-</label> </td><td><label id = "userfields"> <c:out value='${user.PUCissueDt}'/></label></td>
					
					<!--  <input type="text"
						value="<c:out value='${user.PUCexpDt}' />" class="form-control"
						name="PUCexpDt"readonly="readonly" > -->
						</tr>
				</fieldset>	
			
		<fieldset class="form-group">
				<tr>
					<td>
					<label>Registration Amount Paid :-</label> </td><td> <label id = "userfields"> <c:out value='${user.regPayment}'/></label></td>
					<!--  <input type="text"
						value="<c:out value='${user.regPayment}' />" class="form-control"
						name="regPayment"readonly="readonly" > -->
						</tr>
				</fieldset>	
				<fieldset class="form-group">
				
				<tr>
				
					<td>
					<hr style="height:2px;border-width:0;color:gray;background-color:gray; width:250%">
					<h4><u>Approve/Decline Registration</u></h4>
						<br/>	<br/>
					<label><br/><br/>New Registration Date:-</label></td>	<td> <br/><br/><br/><br/><br/><br/><br/>
					 <input class="extend" type="date" placeholder="dd-mm-yyyy"
						value="<c:out value='${user.newRegDate}' />" class="form-control"
						name="newRegDate" onfocus="this.value=''" >
						</td>
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>New Registration Expiry Date:-</label></td><td>  
					<input class="extend" type="date" placeholder="dd-mm-yyyy"
						value="<c:out value='${user.newRegEndDate}' />" class="form-control"
						name="newRegEndDate" onfocus="this.value=''" min="2027-01-01">
						 </td>
						</tr>
				</fieldset>	
				
				<fieldset class="form-group">
				<tr>
					<td>
					<label>New Permanent Vehicle Number :- </label> </td><td>
					
					<input class="extend" type="text"
						value="<c:out value='${user.newPermVehicleNum}' />" class="form-control"
						name="newPermVehicleNum" onfocus="this.value=''" ></td>
						</tr>
				</fieldset>
				<fieldset class="form-group">
				<tr>
					<td>
					<label>Status :-</label> 
					<!--  <input type="text"
						value="<c:out value='${user.status}' />" class="form-control"
						name="status">			-->		
							</td><td> 			
					<select width = 500px name="status" id="status">
					  <option value="none" selected disabled hidden> Select Status </option>
					    <option value="Approved">Approve</option>
					    <option value="Declined">Decline</option>
					  </select>
					  </tr>
					  </fieldset>	
					  
					  
					  </table>
					  
					  
					  
					<div class="buttonholder">  
				<button type="submit" class="btn btn-success">Save</button>
				</div>
					<br/>	<br/>
				</form>
				</table>
			</div>
		</div>
	</div>
	<br/>
	
</body>
</html>
