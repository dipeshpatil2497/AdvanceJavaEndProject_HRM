<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Registration Page</title>
<!-- CSS -->
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
	<div class="container-fluid d-flex justify-content-center"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(reg_form.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">

		<spr:form action="applyHostel.htm" class="w-50 mt-5" method="post" commandName="student">
			<table align="center" class="table table-striped mt-5">
				<thead class="text-light">

					<tr class="text-center" style="font-weight: bold">
						<th colspan="2"><h3>Enter Info Here</h3></th>
					</tr>
				</thead>
				<tbody class="text-light">
					<tr>
						<td>First Name:</td>
						<td><spr:input path="studFname" class="form-control" required="true"/></td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><spr:input path="studLname" class="form-control" required="true" /></td>
					</tr>
					<tr>
						<td>Email Id:</td>
						<td><spr:input path="studEmailId" class="form-control" required="true"/></td>
					</tr>
					<tr>
						<td>City :</td>
						<td><spr:select path="studcity" class="form-control" required="true">
								<spr:option value="mumbai">Mumbai</spr:option>
								<spr:option value="pune">Pune</spr:option>
								<spr:option value="delhi">Delhi</spr:option>
								<spr:option value="jalgaon">Jalgaon</spr:option>
								<spr:option value="nagpur">Nagpur</spr:option>
								<spr:option value="nashik">Nashik</spr:option>
							</spr:select></td>
					</tr>
					<tr>
						<td>Phone No. :</td>
						<td><spr:input path="studPhoneNo" class="form-control" required="true"/></td>
					</tr>
					<tr>
						<td>Pincode :</td>
						<td><spr:input path="studPinCode" class="form-control" required="true"/></td>
					</tr>
					<tr>
						<td><a class="btn btn-primary w-40 "  href="home_stud.jsp">Back</a></td>
						<td><input class="btn btn-success w-50 "  type="submit" value="Submit"></td>
					</tr>
				</tbody>
			</table>
		</spr:form>
	</div>
</body>
</html>