<%@page import="com.cdac.dto.Student"%>
<%@page import="java.util.List"%>
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
<title>Confirmed Student List</title>
</head>
<body>
	<div class="container-fluid"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(img-1.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">
		<div class="row justify-content-center">
			<div class="col-10 mt-5">
				<div class="row">
					<div class="col text-white"
						style="font-size: 5vh; font-family: cursive; font-weight: 600">
						<%
							Integer confCount = (Integer) session.getAttribute("confCount");
						%>
						<%=confCount + " /100"%>
					</div>
				</div>
				<h2 align="center" class="text-light">Confirm Student List</h2>
				<table class="table table-striped text-light">
					<thead>
						<tr class="font-weight-bold" style="font-size: 3vh">
							<td>studId</td>
							<td>First name</td>
							<td>Last name</td>
							<td>EmailId</td>
							<td>City</td>
							<td>PhoneNo</td>
							<td>PinCode</td>
							<td>Status</td>

						</tr>
					</thead>
					<tbody>
						<%
							List<Student> conflist = (List<Student>) request.getAttribute("conflist");
						for (Student slist : conflist) {
						%>
						<tr>
							<td><%=slist.getStudId()%></td>
							<td><%=slist.getStudFname()%></td>
							<td><%=slist.getStudLname()%></td>
							<td><%=slist.getStudEmailId()%></td>
							<td><%=slist.getStudcity()%></td>
							<td><%=slist.getStudPhoneNo()%></td>
							<td><%=slist.getStudPinCode()%></td>
							<td><%=slist.getStudStatus()%></td>
							<td><a class="btn btn-danger w-20"
								href="rej_stud_req.htm?studId=<%=slist.getUserId()%>">
									Reject </a></td>
						</tr>
						<%
							}
						%>

					</tbody>
				</table>
				<div class="row justify-content-between align-items-center mt-5">

					<div class="col-5 d-flex justify-content-end align-items-center">
						<a class="btn btn-info w-50 " href="home_admin.jsp">Back to
							Home</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>