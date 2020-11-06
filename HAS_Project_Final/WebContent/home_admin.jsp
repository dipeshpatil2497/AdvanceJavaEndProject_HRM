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
<title>Admin Home Page</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-info d-flex justify-content-center"
			style="border: 2px solid white;">
			<a class="navbar-brand text-light " href="#"
				style="font-weight: bold; font-size: 4vh"> Welcome <%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getUserName() : ""%>(admin)
			</a>
			
		</nav>
		<div class="row justify-content-center align-items-center mt-5">
			<div class="col-10" style="height: 70vh;border: 2px solid black; border-radius: 12px ">
				<div class="row mt-4 justify-content-center align-items-center">
					<div class="col-6 d-flex justify-content-center align-items-center" style="">
						<a class="btn w-50 p-5  bg-success" href="about_admin.htm"
							style="font-size: 4vh; font-family: fantasy; font-weight: 500; letter-spacing: 1px ;border: 3px solid black;border-radius: 12px">
							Admin Profile </a>
					</div>
					<div class="col-6 d-flex justify-content-center align-items-center" style="">
						<a class="btn  w-70 p-5 bg-danger" href="req_stud_list.htm"
							style="font-size: 4vh; font-family: fantasy; font-weight: 500; letter-spacing: 1px ;border: 3px solid black;border-radius: 12px" >
							ReqStudent List </a>
					</div>
				</div>
				<br><br><br>
				<div class="row mt-5 justify-content-center align-items-center">
					<div class="col-6 d-flex justify-content-center align-items-center" >
						<a class="btn w-70 p-5  bg-warning" href="confstud_list.htm"
							style="font-size: 4vh; font-family: fantasy; font-weight: 500; letter-spacing: 1px ;border: 3px solid black;border-radius: 12px">
							ConfStudent List</a>
					</div>
					<div class="col-6 d-flex justify-content-center align-items-center" style="">
						<a class="btn w-50 p-5 bg-secondary" href="logout_admin.htm"
							style="font-size: 4vh; font-family: fantasy; font-weight: 500; letter-spacing: 1px ;border: 3px solid black;border-radius: 12px" >
							LogOut</a>
						
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>