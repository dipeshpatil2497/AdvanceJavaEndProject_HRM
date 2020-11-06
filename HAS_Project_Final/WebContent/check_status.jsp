<%@page import="com.cdac.dto.Student"%>
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

<title>Status Page</title>
</head>
<body>
	<div class="container-fluid"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(img-1.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">
		<div class="row justify-content-center">
			<div class="col-10 mt-5">

				<table class="table table-striped text-light">
					<thead>
						<tr class="font-weight-bold">
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
							Student slist = (Student) request.getAttribute("student");
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

						</tr>
					</tbody>
				</table>


				<div class="row justify-content-between mt-5">
					<div class="col-3 d-flex justify-content-center align-items-center">
						<a class="btn btn-info w-50 " href="home_stud.jsp">Back</a>
					</div>

					<div class="col-5 d-flex justify-content-center align-items-center">
						<a class="btn btn-danger w-50 " href="gotoPayment_Page.htm">
						GoFor Payment</a>
					</div>

				</div>
				
				<div class="row justify-content-center" style="margin-top: 16vh">
					<div class="col-6">
						<table class="table table-sm table-info">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Status</th>
									<th scope="col">Meaning</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td class="text-danger">
										<font style="font-weight: 500;">Wait</font>
									</td>
									<td>Wait for Admin Response</td>
									
								</tr>
								<tr>
									<th scope="row">2</th>
									<td class="text-success">
										<font style="font-weight: 500;">Confirm</font>
									</td>
									<td>Request Accepted By Admin</td>
									
								</tr>
								<tr>
									<th scope="row">3</th>
									<td class="text-dark">
										<font style="font-weight: 500;">C&P</font>
									</td>
									<td>Request Accepted By Admin & Fees Paid</td>
									
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>

	</div>


</body>
</html>


