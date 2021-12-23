<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RTO Management App</title>
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
		
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="welcome.jsp">RTO Management System</a>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
     
      <li class="nav-item">
        <a class="nav-link" href="user-form.jsp">Register New Vehicle</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="oldvehicleRegform.jsp">Renew Registration</a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/kk"> Check New Vehicle Registration Status </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/oldkk"> Check Registration Renewal Status </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Welcome, ${firstName}  </a>
      </li>
 
     
   				 </ul>
   
			
			
	&nbsp;
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<form action="Logout">
					<input type="Submit" class='btn btn-danger float-right' value="Logout">
					</form>
				
  				</div>
</nav>
	</header>
	<br/>
	
		<div class="container col-md-5">
	
	<!--  
	<form action="<%= request.getContextPath() %>/FileUpload" method="post" enctype="multipart/form-data">
	
		<input type ="file" name ="file" multiple/>
		<input type="submit">
	</form>
	-->
	
	
	<!-- <a href= "videos.jsp">Videos here</a>
	 -->
	 <br/>
	 
	 <section class="elementor-section elementor-inner-section elementor-element elementor-element-a262980 elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="a262980" data-element_type="section">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-2f4c995" data-id="2f4c995" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-75c8358 elementor-widget elementor-widget-heading" data-id="75c8358" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
			<h3 class="elementor-heading-title elementor-size-default">Rules & Regulations, 1989 And Advice for Drivers</h3>		</div>
				</div>
				<div class="elementor-element elementor-element-aa4b529 elementor-widget elementor-widget-accordion" data-id="aa4b529" data-element_type="widget" data-widget_type="accordion.default">
				<div class="elementor-widget-container">
					<div class="elementor-accordion" role="tablist">
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1781" class="elementor-tab-title" data-tab="1" role="tab" aria-controls="elementor-tab-content-1781" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">KEEP LEFT</a>
					</div>
					<div id="elementor-tab-content-1781" class="elementor-tab-content elementor-clearfix" data-tab="1" role="tabpanel" aria-labelledby="elementor-tab-title-1781"><p>The driver of a motor vehicle shall drive the vehicle as close to the left hand side of the road as may be expedient and shall allow all traffic which is proceeding in the direction to pass on his right hand side.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1782" class="elementor-tab-title" data-tab="2" role="tab" aria-controls="elementor-tab-content-1782" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">TURNING TO LEFT AND RIGHT</a>
					</div>
					<div id="elementor-tab-content-1782" class="elementor-tab-content elementor-clearfix" data-tab="2" role="tabpanel" aria-labelledby="elementor-tab-title-1782"><p>The driver of a motor vehicle shall &#8211; when turning to left, drive as close as may be to the left-hand side of the road from which he is making the turn and of the road which he is entering • when turning to the right draw as near as may be to the centre of the road along which he is travelling and arrive as near as may be at the left-hand side of the road which the driver is entering</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1783" class="elementor-tab-title" data-tab="3" role="tab" aria-controls="elementor-tab-content-1783" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">PASSING TO THE RIGHT</a>
					</div>
					<div id="elementor-tab-content-1783" class="elementor-tab-content elementor-clearfix" data-tab="3" role="tabpanel" aria-labelledby="elementor-tab-title-1783"><p>Except as provided in regulation 5, the driver of a motor vehicles shall pass to the right of all traffic proceeding in the same direction as himself.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1784" class="elementor-tab-title" data-tab="4" role="tab" aria-controls="elementor-tab-content-1784" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">PASSING TO THE LEFT</a>
					</div>
					<div id="elementor-tab-content-1784" class="elementor-tab-content elementor-clearfix" data-tab="4" role="tabpanel" aria-labelledby="elementor-tab-title-1784"><p>The driver of a motor vehicle may pass to the left of a vehicle the driver of which having inducted an intention to turn to the right has drawn to the centre to the Road and may pass on either side.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1785" class="elementor-tab-title" data-tab="5" role="tab" aria-controls="elementor-tab-content-1785" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">OVERTAKING PROHIBITED IN CERTAIN CASES</a>
					</div>
					<div id="elementor-tab-content-1785" class="elementor-tab-content elementor-clearfix" data-tab="5" role="tabpanel" aria-labelledby="elementor-tab-title-1785"><p>The driver of a motor vehicle shall not pass a vehicle travelling in the same direction as himself.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1786" class="elementor-tab-title" data-tab="6" role="tab" aria-controls="elementor-tab-content-1786" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">OVERTAKING NOT TO BE OBSTRUCTED</a>
					</div>
					<div id="elementor-tab-content-1786" class="elementor-tab-content elementor-clearfix" data-tab="6" role="tabpanel" aria-labelledby="elementor-tab-title-1786"><p>The drive of a motor vehicle shall not, when being overtaken or being passed by another vehicle, increase speed or do anything in any way to prevent the other vehicle from passing him.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1787" class="elementor-tab-title" data-tab="7" role="tab" aria-controls="elementor-tab-content-1787" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">CAUTION AT ROAD JUNCTION</a>
					</div>
					<div id="elementor-tab-content-1787" class="elementor-tab-content elementor-clearfix" data-tab="7" role="tabpanel" aria-labelledby="elementor-tab-title-1787"><p>The drive of a motor vehicle shall slow down when approaching such intersection, junction at which traffic is not being regulated, if the road entered is a main road designated as such, give way to the vehicles proceeding along that road, and in any other case give way to all traffic approaching the intersection on his right hand.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1788" class="elementor-tab-title" data-tab="8" role="tab" aria-controls="elementor-tab-content-1788" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">GIVING WAY TO TRAFFIC AT ROAD JUNCTION</a>
					</div>
					<div id="elementor-tab-content-1788" class="elementor-tab-content elementor-clearfix" data-tab="8" role="tabpanel" aria-labelledby="elementor-tab-title-1788"><p>The driver of a motor vehicle shall, on entering a road intersection, at which traffic is not being regulated, if the road entered is a main road designated as such, give way to the vehicles proceeding along that road, and in any other case give way to all traffic approaching the intersection on his right hand.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-1789" class="elementor-tab-title" data-tab="9" role="tab" aria-controls="elementor-tab-content-1789" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">FIRE SERVICE VEHICLES AND AMBULANCE TO BE GIVEN FREE PASSAGE</a>
					</div>
					<div id="elementor-tab-content-1789" class="elementor-tab-content elementor-clearfix" data-tab="9" role="tabpanel" aria-labelledby="elementor-tab-title-1789"><p>Every driver shall on the approach of a fire service vehicle or of an ambulance allow free passage by drawing to the side of the road.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17810" class="elementor-tab-title" data-tab="10" role="tab" aria-controls="elementor-tab-content-17810" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">RIGHT TO WAY</a>
					</div>
					<div id="elementor-tab-content-17810" class="elementor-tab-content elementor-clearfix" data-tab="10" role="tabpanel" aria-labelledby="elementor-tab-title-17810"><p>The pedestrians have the right of way at uncontrolled pedestrian crossings. When any road is provided with footpath or cycle tracks specially for other traffic, except with permission of a police officer in uniform, a driver shall not drive on such footpath or track.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17811" class="elementor-tab-title" data-tab="11" role="tab" aria-controls="elementor-tab-content-17811" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">TAKING "U" TURN</a>
					</div>
					<div id="elementor-tab-content-17811" class="elementor-tab-content elementor-clearfix" data-tab="11" role="tabpanel" aria-labelledby="elementor-tab-title-17811"><p>No driver shall take a &#8220;U&#8221; turn where &#8220;U&#8221; turn is specially prohibited and on busy traffic road. If a &#8220;U&#8221; turn is allowed the driver shall slow signal by hand as for a right turn, watch in the rear view mirror and turn when safe to do so.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17812" class="elementor-tab-title" data-tab="12" role="tab" aria-controls="elementor-tab-content-17812" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">SIGNALS TO BE GIVEN BY DRIVERS</a>
					</div>
					<div id="elementor-tab-content-17812" class="elementor-tab-content elementor-clearfix" data-tab="12" role="tabpanel" aria-labelledby="elementor-tab-title-17812"><p>The following signals shall be used by the drivers of all motors vehicles namely.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17813" class="elementor-tab-title" data-tab="13" role="tab" aria-controls="elementor-tab-content-17813" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">DIRECTION INDICATOR</a>
					</div>
					<div id="elementor-tab-content-17813" class="elementor-tab-content elementor-clearfix" data-tab="13" role="tabpanel" aria-labelledby="elementor-tab-title-17813"><p>The signals referred to in regulation 12, may be simplified also by mechanical or electronic devices.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17814" class="elementor-tab-title" data-tab="14" role="tab" aria-controls="elementor-tab-content-17814" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">PARKING OF THE VEHICLE</a>
					</div>
					<div id="elementor-tab-content-17814" class="elementor-tab-content elementor-clearfix" data-tab="14" role="tabpanel" aria-labelledby="elementor-tab-title-17814"><p>Every driver of a motor vehicle parking on any road shall park in such a way that it does not cause or is not likely to cause danger, obstruction or undue inconvenience to other road users and it the manner or parking is indicated by any sign board or markings on the road side, he shall park his vehicle in such manner.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17815" class="elementor-tab-title" data-tab="15" role="tab" aria-controls="elementor-tab-content-17815" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">VISIBILITY OF LAMPS AND REGISTRATION MARKS</a>
					</div>
					<div id="elementor-tab-content-17815" class="elementor-tab-content elementor-clearfix" data-tab="15" role="tabpanel" aria-labelledby="elementor-tab-title-17815"><p>(1) No load or other goods shall be placed on any motor vehicles so as to mask or otherwise interrupt vision of any lamp, registration mark or other mark required to be carried by or exhibited on any motor vehicle by or under Act, unless a duplicate of the lamp or mark so marked or otherwise obscured is exhibited in the manner required by or under the Act for the exhibition of the marked or obscured lamp or mark.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17816" class="elementor-tab-title" data-tab="16" role="tab" aria-controls="elementor-tab-content-17816" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">16 WAY TRAFFIC: A DRIVER SHALL NOT</a>
					</div>
					<div id="elementor-tab-content-17816" class="elementor-tab-content elementor-clearfix" data-tab="16" role="tabpanel" aria-labelledby="elementor-tab-title-17816"><p>Drive a motor vehicle on roads declared &#8220;16 WAY&#8221; except in the direction specified by sign boards. • Drive a vehicle in a reverse direction into a road designed &#8220;16 WAY&#8221;.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17817" class="elementor-tab-title" data-tab="17" role="tab" aria-controls="elementor-tab-content-17817" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">DRIVING ON CHANNELISED ROADS ( LANE TRAFFIC )</a>
					</div>
					<div id="elementor-tab-content-17817" class="elementor-tab-content elementor-clearfix" data-tab="17" role="tabpanel" aria-labelledby="elementor-tab-title-17817"><p>Where any road is marked by lanes for movement of traffic, the driver of a motor vehicle shall drive within the lane and change the lane only after giving proper signal.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17818" class="elementor-tab-title" data-tab="18" role="tab" aria-controls="elementor-tab-content-17818" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">STOP SIGN ON ROAD SURFACE</a>
					</div>
					<div id="elementor-tab-content-17818" class="elementor-tab-content elementor-clearfix" data-tab="18" role="tabpanel" aria-labelledby="elementor-tab-title-17818"><p>When any line is painted on or inlaid into the surface of any road at the approach to the road junction or to a pedestrian crossing or otherwise,no driver shall drive a motor vehicle so that any part thereof projects beyond that line at any time when a signal to stop is being given by a police officer or by means of a traffic control light or by the display of any traffic sign.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17819" class="elementor-tab-title" data-tab="19" role="tab" aria-controls="elementor-tab-content-17819" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">TOWING</a>
					</div>
					<div id="elementor-tab-content-17819" class="elementor-tab-content elementor-clearfix" data-tab="19" role="tabpanel" aria-labelledby="elementor-tab-title-17819"><p>No vehicle other than a mechanically disabled motor vehicle or incompletely assembled motor vehicle, a registered trailer or a side car, shall be drawn or towed by any other motor vehicle, except for purposes of delivery and to the nearest filling station or garage.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17820" class="elementor-tab-title" data-tab="20" role="tab" aria-controls="elementor-tab-content-17820" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">USE OF HORNS AND SILENCE Z20S</a>
					</div>
					<div id="elementor-tab-content-17820" class="elementor-tab-content elementor-clearfix" data-tab="20" role="tabpanel" aria-labelledby="elementor-tab-title-17820"><p>A driver of a vehicle shall not • Sound the horn needlessly or continuously or more than necessary to ensure safety. • Sound the horn in silence z20s.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17821" class="elementor-tab-title" data-tab="21" role="tab" aria-controls="elementor-tab-content-17821" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">TRAFFIC SIGN AND TRAFFIC POLICE</a>
					</div>
					<div id="elementor-tab-content-17821" class="elementor-tab-content elementor-clearfix" data-tab="21" role="tabpanel" aria-labelledby="elementor-tab-title-17821"><p>A driver of a motor vehicle and every other person using the road shall obey every direction given whether by signal or otherwise a police officer, or by notice, traffic sign or signal fixed or operated.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17822" class="elementor-tab-title" data-tab="22" role="tab" aria-controls="elementor-tab-content-17822" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">DISTANCE FROM VEHICLES IN FRONT</a>
					</div>
					<div id="elementor-tab-content-17822" class="elementor-tab-content elementor-clearfix" data-tab="22" role="tabpanel" aria-labelledby="elementor-tab-title-17822"><p>The driver of a motor vehicle moving behind another vehicle shall keep at a sufficient distance from that other vehicle to avoid collision if the vehicle in front should suddenly slow down or stop.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17823" class="elementor-tab-title" data-tab="23" role="tab" aria-controls="elementor-tab-content-17823" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">ABRUPT BRAKE</a>
					</div>
					<div id="elementor-tab-content-17823" class="elementor-tab-content elementor-clearfix" data-tab="23" role="tabpanel" aria-labelledby="elementor-tab-title-17823"><p>No driver of a vehicle shall apply brake abruptly unless it is necessary to do so for safety reasons.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17824" class="elementor-tab-title" data-tab="24" role="tab" aria-controls="elementor-tab-content-17824" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">VEHICLES GOING UPHILL TO BE GIVEN PRECEDENCE</a>
					</div>
					<div id="elementor-tab-content-17824" class="elementor-tab-content elementor-clearfix" data-tab="24" role="tabpanel" aria-labelledby="elementor-tab-title-17824"><p>On mountain roads and steep roads, the driver of a motor vehicle travelling down hill shall give precedence to a vehicle going uphill wherever the road is not sufficiently wide to allow the vehicle to pass each other freely without danger, and stop the vehicle to the side of the road in order to allow any vehicle proceed in uphill to pass.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17825" class="elementor-tab-title" data-tab="25" role="tab" aria-controls="elementor-tab-content-17825" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">OBSTRUCTION OF DRIVER</a>
					</div>
					<div id="elementor-tab-content-17825" class="elementor-tab-content elementor-clearfix" data-tab="25" role="tabpanel" aria-labelledby="elementor-tab-title-17825"><p>A driver of a motor vehicle shall not allow any person to stand or all or anything to be placed in such manner or position as to hamper his control of the vehicle.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17826" class="elementor-tab-title" data-tab="26" role="tab" aria-controls="elementor-tab-content-17826" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">SPEED TO BE RESTRICTED</a>
					</div>
					<div id="elementor-tab-content-17826" class="elementor-tab-content elementor-clearfix" data-tab="26" role="tabpanel" aria-labelledby="elementor-tab-title-17826"><p>The driver of a motor vehicle shall, when passing or meeting procession or a body of body of troops or police on the march or when passing workmen engaged on road repairs, drive at a speed not exceeding 25 Km an hour.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17827" class="elementor-tab-title" data-tab="27" role="tab" aria-controls="elementor-tab-content-17827" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">DRIVING OF TRACTORS AND GOOD VEHICLES</a>
					</div>
					<div id="elementor-tab-content-17827" class="elementor-tab-content elementor-clearfix" data-tab="27" role="tabpanel" aria-labelledby="elementor-tab-title-17827"><p>A driver when driving a tractor shall not carry or allow any person to be carried on tractor. A drive of goods carriage shall not carry in the drivers cabin more numbers of persons than that is menti27d in the registration certificate and shall not carry passengers for hire or reward.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17828" class="elementor-tab-title" data-tab="28" role="tab" aria-controls="elementor-tab-content-17828" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">PROJECTION OF LOADS</a>
					</div>
					<div id="elementor-tab-content-17828" class="elementor-tab-content elementor-clearfix" data-tab="28" role="tabpanel" aria-labelledby="elementor-tab-title-17828"><p>No person shall drive in any public place any motor vehicle which is loaded in a manner likely to cause danger to any person in such a manner that the load or any part thereof of anything extends laterally beyond the body or to the rear or in height beyond the permissible limit.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17829" class="elementor-tab-title" data-tab="29" role="tab" aria-controls="elementor-tab-content-17829" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">RESTRICTION TO CARRIAGE OF DANGEROUS SUBSTANCES</a>
					</div>
					<div id="elementor-tab-content-17829" class="elementor-tab-content elementor-clearfix" data-tab="29" role="tabpanel" aria-labelledby="elementor-tab-title-17829"><p>Except for the fuel and lubricants necessary for the use of the vehicle, no explosive highly inflammable or otherwise dangerous substance, shall be carried on any public service vehicle.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17830" class="elementor-tab-title" data-tab="30" role="tab" aria-controls="elementor-tab-content-17830" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">RESTRICTION ON DRIVING BACKWARDS</a>
					</div>
					<div id="elementor-tab-content-17830" class="elementor-tab-content elementor-clearfix" data-tab="30" role="tabpanel" aria-labelledby="elementor-tab-title-17830"><p>No driver of a motor vehicle shall cause the vehicle to be driven backward without first satisfying himself that he will not thereby cause danger or undue inconvenience to any person or in any circumstances, for any greater distance or period of time than may be reasonably necessary in order to turn the vehicle round.</p></div>
				</div>
							<div class="elementor-accordion-item">
					<div id="elementor-tab-title-17831" class="elementor-tab-title" data-tab="31" role="tab" aria-controls="elementor-tab-content-17831" aria-expanded="false">
													<span class="elementor-accordion-icon elementor-accordion-icon-left" aria-hidden="true">
															<i class="elementor-accordion-icon-closed fa fa-plus"></i>
								<i class="elementor-accordion-icon-opened fa fa-minus"></i>
														</span>
												<a class="elementor-accordion-title" href="">PRODUCTION OF DOCUMENTS</a>
					</div>
					<div id="elementor-tab-content-17831" class="elementor-tab-content elementor-clearfix" data-tab="31" role="tabpanel" aria-labelledby="elementor-tab-title-17831"><p>A person driving a vehicle shall always carry with him his driving license,certificate of registration, certificates of taxation and certificate of insurance of the vehicle and in case of • transport vehicle the permit and fitness certificate,also. • shall on demand by police officer in uniform or an officer of the Motor Vehicles Department in uniform or any other officer authorised by the Government, produce the documents for inspection:</p></div>
				</div>
								</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
				<section class="elementor-section elementor-top-section elementor-element elementor-element-4207d4c elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="4207d4c" data-element_type="section">
						<div class="elementor-container elementor-column-gap-default">
							<div class="elementor-row">
					<div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-2425c6e" data-id="2425c6e" data-element_type="column">
			<div class="elementor-column-wrap elementor-element-populated">
							<div class="elementor-widget-wrap">
						<div class="elementor-element elementor-element-ec268a4 elementor-tabs-view-horizontal elementor-widget elementor-widget-tabs" data-id="ec268a4" data-element_type="widget" data-widget_type="tabs.default">
				<div class="elementor-widget-container">
					<div class="elementor-tabs">
			
			
		</div>
				</div>
				</div>
						</div>
					</div>
		</div>
								</div>
					</div>
		</section>
	 
	 
	 
	
	</div>
</body>
</html>