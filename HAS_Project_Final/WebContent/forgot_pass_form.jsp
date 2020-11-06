<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
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


<title>Forgot Password Page</title>
</head>
<body>
	<div class="container-fluid d-flex justify-content-center"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(login_form.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">
		<form action="req_forgot_password.htm" class="w-50 mt-5" method="post">
			<table class="table table-striped mt-5">
				<thead class="text-light mt-3">

					<tr class="text-center " style="font-weight: bold;">
						<th colspan="2"><h2>Forgot Password</h2></th>
					</tr>
				</thead>
				<tbody class="text-light">
					<tr style="font-weight: bold; font-size: 3vh">

						<td>Enter Your Registered Mail ID:</td>
						<td> 
							<input type="text" name="userEmailId">				
						</td>
					</tr>

				</tbody>
			</table>
				<div class="row justify-content-center">
					<div class="col-3 d-flex justify-content-center align-items-center">
						<input type="submit" class="btn btn-success w-50 " value="Submit" />
					</div>

					<div class="col-3 d-flex justify-content-center align-items-center">
						<a class="btn btn-primary w-50 " href="index.jsp">Back</a>
					</div>

				</div>			
			
		</form>
	</div>
</body>
</html>