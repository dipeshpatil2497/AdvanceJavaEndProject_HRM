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

		<spr:form action="add_new_admin.htm" class="w-50 mt-5" method="post"
			commandName="user">

			<table align="center" class="table table-striped mt-5">
				<thead class="text-light">

					<tr class="text-center" style="font-weight: bold">
						<th colspan="2"><h3>Add New Admin Here</h3></th>
					</tr>
				</thead>
				<tbody class="text-light">
					<tr>
						<td>User Name:</td>
						<td><spr:input path="userName" class="form-control"
								required="true" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><spr:password path="userPass" class="form-control"
								required="true" /></td>
					</tr>
					<tr>
						<td>Email-Id :</td>
						<td><spr:input path="userEmailId" class="form-control"
								required="true" /></td>
					</tr>
					<tr align="center">
						<td><h3 style="color: red"><%=(session.getAttribute("msg") != null) ? "Already have Account..!!" : ""%></h3>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="row justify-content-center">
				<div class="col-6 d-flex justify-content-center align-items-center">
					<a class="btn btn-primary w-50 " href="admin_profile.jsp">Back</a>
				</div>
				<div class="col-6 d-flex justify-content-end align-items-center">
					<input type="submit" class="btn btn-primary w-50 " value="Register" />
				</div>


			</div>

		</spr:form>
	</div>
</body>
</html>