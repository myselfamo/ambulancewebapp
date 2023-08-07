

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

				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>

				<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
				</li>
				
				<li class="nav-item"><a class="nav-link" href="dregister.jsp">Driver Register</a>
				</li>
				
				<li class="nav-item"><a class="nav-link" href="dlogin.jsp">Driver Login</a>
				</li>
			</ul>

		</div>
	</nav>

	



	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-5">
				<div class="card">
					<div class="card-header text-center c-header text-white">
						<i class="fa fa-user-circle fa-2x"></i>
						<h5>Driver Registration Page</h5>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-msg");

					if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=regMsg%>Login..<a
							href="dlogin.jsp">click here</a>

					</div>
					<%
					session.removeAttribute("reg-msg");

					}
					%>
					<div class="card-body">
						<form action="dregisterServlet" method="post">
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
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>

							<div class="form-group">
								<label for="exampleInputAnumber">Ambulance Number</label> <input
									type="text" class="form-control" id="exampleInputAnumber"
									name="anum">
							</div>

							<div class="form-group">
								<label for="exampleInputContact">Contact Number</label> <input
									type="text" class="form-control" id="exampleInputContact"
									name="contact">
							</div>
							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>