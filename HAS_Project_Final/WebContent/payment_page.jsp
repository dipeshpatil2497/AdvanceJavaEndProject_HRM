<%@page import="com.cdac.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
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
</head>
<body>
	<div class="container-fluid"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(img-2.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">
		<div class="row d-flex justify-content-center align-items-center">
			<div
				class="col-5 mt-5 d-flex justify-content-center align-items-center">
				<h1 class="text-light">Payment Page</h1>
				<br>
			</div>
		</div>
		<div class="row justify-content-center" style="margin-top: 12vh">
			<div class="col-6">
				<table class="table table-lg table-warning">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Fees Of</th>
							<th scope="col">Cost</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td><font style="font-weight: 500;">Hostel Deposit
									Amount:</font></td>
							<td>8000</td>

						</tr>
						<tr>
							<th scope="row">2</th>
							<td><font style="font-weight: 500;"> Hostel six
									month fees (8000 per month): </font></td>
							<td>48000</td>

						</tr>
						<tr>
							<th scope="row">3</th>
							<td><font style="font-weight: 500;">Total Amount:</font></td>
							<td><font style="font-weight: 800; font-size: 3vh">
									56000 </font></td>

						</tr>
					</tbody>
				</table>

			</div>
		</div>
		<div class="row justify-content-between mt-5"
			style="height: 12vh">
			<div class="col-6 d-flex justify-content-center align-items-center">
				<a class="btn btn-info w-20 " href="home_stud.jsp">Goto Home
					Page</a>
			</div>
			<div class="col-6 d-flex justify-content-center align-items-center">
				<a class="btn btn-info w-20 " href="con_and_paid.htm">Confirm&Pay</a>
			</div>

		</div>
		<div class="row justify-content-center align-items-center my-4"> 
			<b style="font-size:3vh">WE WISH YOU A VERY COMFORTABLE STAY IN THE HOSTEL</b>
		</div>
	</div>
	</div>
</body>
</html>