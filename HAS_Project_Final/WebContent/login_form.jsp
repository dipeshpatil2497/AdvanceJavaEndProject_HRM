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


<title>Login Page</title>
</head>
<body>
	<div class="container-fluid d-flex justify-content-center"
		style="height: 100vh; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(login_form.jpg); background-size: cover; background-position: center; background-repeat: no-repeat">
		<spr:form action="login.htm" class="w-50 mt-5" method="post"
			commandName="user">
			<table class="table table-striped mt-5">
				<thead class="text-light mt-3">

					<tr class="text-center " style="font-weight: bold;">
						<th colspan="2"><h2>Login Here</h2></th>
					</tr>
				</thead>
				<tbody class="text-light">
					<tr style="font-weight: bold; font-size: 3vh">

						<td>User Name :</td>
						<td><spr:input path="userName" class="form-control" /> 
						</td>
					</tr>
					<tr style="font-weight: bold; font-size: 3vh" >
						<td>Password :</td>
						<td><spr:password path="userPass" class="form-control" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td><font color="red"><spr:errors path="userName"></spr:errors></font>
							<font color="red"><spr:errors path="userPass"></spr:errors></font>	
						</td>
						<tr>
							<td><font color="red" >
								<%=(session.getAttribute("forgotmsg")!=null) ? session.getAttribute("forgotmsg") : "" %>
								<% session.removeAttribute("forgotmsg"); %>
							</font></td>
						</tr>
						
					</tr>
				</tbody>
			</table>
				<div class="row justify-content-center">
					<div class="col-6 d-flex justify-content-center align-items-center">
						<a class="btn btn-danger w-50 " href="forgot_pass_form.jsp">Forgot Password</a>
					</div>
					<div class="col-3 d-flex justify-content-center align-items-center">
						<input type="submit" class="btn btn-success w-50 " value="Login" />
					</div>

					<div class="col-3 d-flex justify-content-center align-items-center">
						<a class="btn btn-primary w-50 " href="index.jsp">Back</a>
					</div>

				</div>
				
					
			
		</spr:form>
	</div>
</body>
</html>