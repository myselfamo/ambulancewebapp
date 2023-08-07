<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<body
	style="background-image: url(img/ambuimg.jpg); background-repeat: no-repeat; background-size: 100%">


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

				<li class="nav-item"><a class="nav-link" href="">Your
						Booking</a></li>
				<li class="nav-item"><a class="nav-link" href="dcontact.jsp">Contact
						Us</a></li>

				<li class="nav-item"><a class="nav-link" href="about.jsp">About
						us</a></li>
				<li class="nav-item"><a class="nav-link" href="dlogoutServlet">Logout</a></li>
				
			</ul>

		</div>
	</nav>

	



	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-5">
				<div class="card">
					<div class="card-header text-center c-header text-white">
						<i class="fa fa-user-circle fa-2x"></i>
						<h5>Contact form</h5>
						
						<h7>Send your comments through this form, we will get you back</h7>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-msg");

					if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=regMsg%><a
							href="dhome.jsp">click here</a>

					</div>
					<%
					session.removeAttribute("reg-msg");

					}
					%>
					<div class="card-body">
						<form action="dcontactServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Message or Issue</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									name="info">
							</div>

							
							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>