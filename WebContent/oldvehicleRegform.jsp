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
	
	

			#pay{
				display : none;
				margin-top:500px;
				margin-bottom:500px;
			}
			
			#panda{
					margin:200px;
					
					background-color:'blue';
					}
			.panel{
				
				margin-top:50px;
				margin-bottom:50px;
				margin-left: 0px;
				width: 200px;
				border:2px solid black;
				padding:2px;
				/*background-color: limegreen;*/
		
				border-radius:9px;
				text-alignment: center;
				font-weight: bold;
				display:block;
				text-decoration:none;
				cursor: pointer;
			}
			
		
		
		</style>
	<header>
		
		
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light" >
		<a href="welcome.jsp" class="navbar-brand"> RTO Management System </a>
  
  	<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
      <li class="nav-item">
        <li><a href="welcome.jsp" class="nav-link">Go Back</a></li>
      </li>
    
   				 </ul>
   				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
					<input type="Submit" class='btn btn-danger float-right'  value="Logout">
					</form>
				</div>
				
  				</div>
</nav>
		
	</header>
	<br>
	<div class="container col-md-8">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="oldupdate" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="oldinsert" method="post">
				</c:if>

				<caption>
					<h1><u>
						<c:if test="${user != null}">
            			Edit Vehicle
            		</c:if>
						<c:if test="${user == null}">
            			Registration Form
            		</c:if>
					</u></h1>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Enter Owner Name(Format:- Firstname Lastname):- </label> <input type="text"
						value="<c:out value='${user.ownerName}' />" class="form-control"
						name="ownerName" required="required">
				</fieldset>
				

				<fieldset class="form-group">
					<label>Enter Aadhar Number:- </label> <input type="number"
						value="<c:out value='${user.aadharNum}' />" class="form-control"
						name="aadharNum">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter Odometer Reading(Kilometers) :-</label> <input type="text"
						value="<c:out value='${user.kmsRan}' />" class="form-control"
						name="kmsRan">
				</fieldset>
				
					
				
				<fieldset class="form-group">
					<label>Enter Model Name :-</label> <input type="text"
						value="<c:out value='${user.modelName}' />" class="form-control"
						name="modelName">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Manufacturer's Name :-</label> <input type="text"
						value="<c:out value='${user.manufacName}' />" class="form-control"
						name="manufacName">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Manufactured Date :-</label> <input type="date"
						value="<c:out value='${user.manufacDate}' />" class="form-control"
						name="manufacDate">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Chasis Number (Format : XX-XXXXXXX) :-</label> <input type="text"
						value="<c:out value='${user.chasisNum}' />" class="form-control"
						name="chasisNum">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Engine Number (Format: XXXXX XXXXX) :-</label> <input type="text"
						value="<c:out value='${user.engineNum}' />" class="form-control"
						name="engineNum">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Color :-</label> <input type="text"
						value="<c:out value='${user.color}' />" class="form-control"
						name="color">
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Seating Capacity :-</label> <input type="number"
						value="<c:out value='${user.seatingCap}' />" class="form-control"
						name="seatingCap">
				</fieldset>	
				
								
				
				
				<fieldset class="form-group">
				<label for="numOfWheels">Enter Number of Wheels :-</label>
					  <select name="numOfWheels" id="numOfWheels">
					  <option value="none" selected disabled hidden> Select an Option </option>
					    <option value="Two wheeler">Two wheeler</option>
					    <option value="Three Wheeler">Three Wheeler</option>
					    <option value="Four Wheeler">Four Wheeler</option>
					  </select>
				</fieldset>	
									
				<fieldset class="form-group">
				<label for="typeOfFuel">Enter Type of Fuel :-</label>
				
					  <select name="typeOfFuel" id="typeOfFuel">
					  <option value="none" selected disabled hidden> Select an Option </option>
					    <option value="Petrol">Petrol</option>
					    <option value="Diesel">Diesel</option>
					  </select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter Type of Vehicle (Enter '-' for 2/3 wheeler) :-</label> <input type="text"
						value="<c:out value='${user.vehicleType}' />" class="form-control"
						name="vehicleType">
						
				</fieldset>	
				
				<fieldset class="form-group">
					<label>Enter Insurance Policy Number :-</label> <input type="text"
						value="<c:out value='${user.insurancePolicyNum}' />" class="form-control"
						name="insurancePolicyNum">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter Insurance issuing Company Name :-</label> <input type="text"
						value="<c:out value='${user.insuranceCompany}' />" class="form-control"
						name="insuranceCompany">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter Old Vehicle Number :-</label> <input type="text"
						value="<c:out value='${user.permVehicleNum}' />" class="form-control"
						name="permVehicleNum">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter old Registration Expiry Date :-</label> <input type="date"
						value="<c:out value='${user.regExpiryDate}' />" class="form-control"
						name="regExpiryDate">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter PUC Certificate Number :-</label> <input type="number"
						value="<c:out value='${user.PUCNo}' />" class="form-control"
						name="PUCNo">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter PUC Certificate Issue Date :-</label> <input type="date"
						value="<c:out value='${user.PUCissueDt}' />" class="form-control"
						name="PUCissueDt">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Enter PUC Certificate Expiry Date :-</label> <input type="date"
						value="<c:out value='${user.PUCexpDt}' />" class="form-control"
						name="PUCexpDt">
				</fieldset>
				
				
				<fieldset class="form-group">
					<label>Select Amount (Registration Amount) :-</label> 
					<select name="regPayment" id="regPayment">
					  <option value="none" selected disabled hidden> Select amount </option>
					    <option value="8000">Two, Three Wheeler : Rs. 8000</option>
					    <option value="50000">Four Wheeler : Rs. 50000</option>
					  </select>
				</fieldset>
				
					
					
					<a class="panel btn btn-primary" onclick="show_hide()" style="margin:0 auto;">Submit Form and Proceed to Pay</a>
					
					</div>
		</div>
	</div>
	
				<div id = "panda">	
				<div class="container col-md-8">	
				
				<div  id = "pay" class="card" data-link="#pay">
				<div class="card-body">
			
				
				<fieldset class="form-group">
					<label>Card Number : &nbsp;:</label> 
					<input type="text"
						size="50"  align="right" required>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Holder's Name: </label> <input type="text"	
						size="50" align="right"required>
				</fieldset>
				<fieldset class="form-group">
					<label>Card Expiry Date: </label> <input type="text" size="18"required>
					<label>CVV:  &nbsp;&nbsp;&nbsp;&nbsp;:</label> <input type="password" size = "18"required>
				</fieldset>
				
				
				
				<button type="submit" class="btn btn-success" >Pay Amount</button>
				
					</div>
					</div>
					</div>
				</div>

			</form>
			
	
		<script>
	
	
	
		let div = document.getElementById('pay');
		console.log(div)
		var a;
		function show_hide(){
			if (a ==1)
				{
				div.style.display="block";
				let el = document.getElementById('panda')
				el.scrollIntoView();
				return a=0;
				}
			else{
				div.style.display="none";
				return a=1;
			}
		}
		
		
		
		
		</script>
</body>
</html>
