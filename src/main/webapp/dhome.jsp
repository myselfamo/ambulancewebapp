<%@page import="com.entitesd.Driver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
Driver driver = (Driver) session.getAttribute("driver-ob");

if (driver == null) {
	session.setAttribute("login-msg", "Please Login First");
	response.sendRedirect("dlogin.jsp");

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #90caf9;">

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#"><img src="img/logo.jpg "
			height="50px">RED-CROSS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="dBooking.jsp">Your Booking</a></li>
				<li class="nav-item"><a class="nav-link" href="dcontact.jsp">Contact
						Us</a></li>

				<li class="nav-item"><a class="nav-link" href="about.jsp">About
						us</a></li>
				<li class="nav-item"><a class="nav-link" href="dlogoutServlet">Logout</a></li>

			</ul>

		</div>
	</nav>








</body>
</html>