<%@ page language="java" import="com.ht.reporttracker.servlets.StatisticsHelper" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>

<link rel="stylesheet" type="text/css" href="./css/template.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="./js/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepickerFrom").datepicker({ dateFormat: 'dd-mm-yy'}).datepicker("setDate", new Date());
		$("#datepickerTo").datepicker({ dateFormat: 'dd-mm-yy'}).datepicker("setDate", new Date());
		$('.visibleHeader').click(function(){
			$(this).toggleClass('expand');

			if (!$(this).next().is(':visible')) {
					$(this).next().show();
			}else{
				$(this).next().hide();
			}
		});
	});
	
	
</script>




</head>

<body>
	<!-- Header -->
	<div>
		<div>
			<img alt="" class="logo-local" src="./images/logo.png"> <img
				alt="" class="logo-global" src="./images/logo_tcm34-89251.jpg">
		</div>
		<div class="headerContent">
			<h3>Report Tracker</h3>
		</div>
		<div>
			<div class="straightLine"></div>
		</div>
		<div class="FormName">
			<div>
				<span>Dashboard</span>
			</div>
		</div>
	</div>


	<!--  BODY -->
	<div class="block center">
		<div class="welcomeLabel">
			<p>
				Welcome
				<%=request.getSession().getAttribute("user")%></p>
		</div>
		<form name="formDashboard" method="post" action="GetDashboard" id="formDashboard">

		<div class="form-group " style="margin-left: 0; margin-right: 0;">
			<div class="col-md-2">
				<h5>Reports By</h5>
			</div>
			<div class="col-md-3" style="padding-left: 10px; padding-right: 0px;">
				<select name="locationPicker" id="locationPicker" tabindex="1"
					class="form-control" onfocus="validateSalutation(this)"
					onblur="hideErrorTip()">
					<option value="-1">Location/Dealer</option>
					<option value="1">Hyderabad</option>
					<option value="2">Vijayawada</option>
					<option value="269">Tirupati</option>
					<option value="326">Viashakapatnam</option>

				</select>
			</div>

			<div class="col-md-3" style="padding-left: 10px; padding-right: 0px;">
				<select name="soPicker" id="soPicker" tabindex="2"
					class="form-control" onfocus="validateSalutation(this)"
					onblur="hideErrorTip()">
					<option value="-1">SO</option>
					<option value="1">Sales Officer1</option>
					<option value="2">Sales Officer2</option>
					<option value="269">Sales Officer3</option>
					<option value="326">Sales Officer4</option>

				</select>
			</div>


			<div class="col-md-3" style="padding-left: 10px; padding-right: 0px;">
				<select name="modelPicker" id="modelPicker" tabindex="3"
					class="form-control" onfocus="validateSalutation(this)"
					onblur="hideErrorTip()">
					<option value="-1">Select Model</option>
					<option value="1">Etios Liva</option>
					<option value="14">Etios</option>
					<option value="29">Innova</option>
					<option value="37">Corolla Altis</option>
					<option value="48">Corolla Altis Limited</option>
					<option value="55">Fortuner</option>
					<option value="64">Prius</option>
					<option value="67">Land Cruiser Prado</option>
					<option value="69">Land Cruiser</option>
					<option value="97">Etios Cross</option>
					<option value="114">Camry</option>
					<option value="115">Etios Liva Limited Edition</option>
					<option value="116">Etios Cross Limited Edition</option>
					<option value="117">Innova Crysta</option>

				</select>
			</div>
			<div class="col-md-1"></div>

		</div>


		<div class="form-group " style="margin-left: 0; margin-right: 0;">
			<div class="col-md-2" style="padding-left: 10px; padding-right: 0px;">
				<p>
					From: <input class="form-control" type="text" id="datepickerFrom" name="datepickerFrom">
				</p>
			</div>
			<div class="col-md-3" style="padding-left: 77px; padding-right: 0px;">
				<p>
					To: <input  class="form-control" type="text" id="datepickerTo" name="datepickerTo">
				</p>
			</div>

	
			<div class="col-md-4" style="padding-left: 78px; padding-right: 0px; padding-top: 20px">
				<input type="submit" name="btnSubmit" value="Get Reports"
					id="btnSubmit" class="btn btn-default" />

			</div>
			<div class="col-md-5"></div>
		</div>
		
		<% 
			List<String> locawiseInquiries = (List<String>)request.getSession().getAttribute("locawiseInquiries"); 
			List<String> locawiseTestdrives = (List<String>)request.getSession().getAttribute("locawiseTestdrives"); 
			List<String> locawiseOrderbookings = (List<String>)request.getSession().getAttribute("locawiseOrderbookings"); 
			List<String> locawiseInvoices = (List<String>)request.getSession().getAttribute("locawiseInvoices"); 
		%>
		<div class="statitisticsBlock">
			<div class="visibleHeader expand">
				<p> <span class="sign"></span> Total number of Inquiries = <%=request.getSession().getAttribute("inquiries")%> </p>
			</div>
			<div class="hiddenBody">
			<c:forEach items="${locawiseInquiries}" var="stringVal">
			    <p>${stringVal}</p>
			</c:forEach>
			</div>
			<div class="visibleHeader expand">
				<p> <span class="sign"></span> Total number of Test Drives = <%=request.getSession().getAttribute("testdrives")%> </p>
			</div>
			<div class="hiddenBody">
			<c:forEach items="${locawiseTestdrives}" var="stringVal">
			    <p>${stringVal}</p>
			</c:forEach>			
			</div>
			<div class="visibleHeader expand">
				<p> <span class="sign"></span> Total number of Order Bookings = <%=request.getSession().getAttribute("orderbookings")%></p>
			</div>
			<div class="hiddenBody">
			<c:forEach items="${locawiseOrderbookings}" var="stringVal">
			    <p>${stringVal}</p>
			</c:forEach>			
			</div>
			<div class="visibleHeader expand">
				<p> <span class="sign"></span> Total number of Invoices = <%=request.getSession().getAttribute("invoices")%> </p>
			</div>
			<div class="hiddenBody">
			<c:forEach items="${locawiseInvoices}" var="stringVal">
			    <p>${stringVal}</p>
			</c:forEach>			
			</div>
		</div>
		
	</div>

</body>
</html>