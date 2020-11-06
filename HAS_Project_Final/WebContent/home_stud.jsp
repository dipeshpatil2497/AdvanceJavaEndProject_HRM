<%@page import="com.cdac.dto.Student"%>
<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>Student Home Page</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-info "
			style="border: 2px solid white;">
			<a class="navbar-brand text-light " href="#"
				style="font-weight: bold; font-size: 4vh"> Welcome <%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getUserName() : "!!!!!!!!"%>
				(student)
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarNav">
				<ul class="navbar-nav ml-auto pr-5">
					<li class="nav-item active pr-4">
						<h5>
							<a class="nav-link text-light " href="logout_stud.htm">LogOut</a>
						</h5>
					</li>
				</ul>
			</div>
		</nav>

		<%@ include file="about_hostel.jsp"%>
		<hr>
		<hr>

		<div class="row d-flex justify-content-center align-items-center mt-5 mx-4"
			style="border: 2px solid grey; height: 25vh"  >
				<h3>Apply For Hostel</h3>
				<div class="col-5 d-flex justify-content-center align-items-center">
					<a class="btn btn-info w-50 " href="prep_stud_form.htm">Click
						here for Apply</a>
				</div>

				<div class="col-3 d-flex justify-content-center align-items-center">
					<a class="btn btn-info w-50 " href="check_status2.htm">
					CheckStatus</a>
				</div>
		</div>

		<div style="height: 10vh">
			<h3 align="center" style="color: red">
				<%=(session.getAttribute("student") != null) ? "You have Already Requested....click on Check status" : ""%>
			
				<%
				Student flag = (Student) session.getAttribute("student1");
				Integer flag2 = (Integer) session.getAttribute("count");
				Student flag3 = (Student) session.getAttribute("student2");
				%>
				<%=(flag != null && flag2 > 0) ? "Wait for Admin Response...!!" : ""%>
				<%=(flag3 != null) ? "Your Admission Already Confirmed...!!" : ""%>
				<% flag = null; flag2=null ; flag3=null; %>

			</h3>
		</div>
		<div class="row justify-content-center align-items-center my-4"> 
			<b style="font-size:3vh">WE WISH YOU A VERY COMFORTABLE STAY IN THE HOSTEL</b>
		</div>
	</div>
</body>
</html>