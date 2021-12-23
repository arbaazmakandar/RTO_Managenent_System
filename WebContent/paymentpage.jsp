<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	
		<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			
			
			
			
	<form action="updatepaymentold" method="post">
	<caption><h2>Payment</h2></caption>
	<input  name="id" value="<c:out value='${user.id}' />" disabled/>
	
	
			<fieldset class="form-group">
				
				
				
					<label>Amount</label> <input type="text"
						 class="form-control"
						name="amount" required="required" disabled>
				</fieldset>
				
				
				<fieldset class="form-group">
					<label>Card Number</label> <input type="text"
						   required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Card holder's Name</label> <input type="text"
						
						 required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Expiry Date</label> <input type="text"
						
						 required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>CVV</label> <input type="text"
						
						 required="required">
				</fieldset>
				<button type="submit" class="btn btn-primary" >Pay Amount</button>
				
	</form>
	</div>
	</div>
	</div>
</body>
</html>