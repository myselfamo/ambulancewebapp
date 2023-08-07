<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.entitesB.*"%>
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
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="Booking.jsp">Your
						Booking</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact
						Us</a></li>

				<li class="nav-item"><a class="nav-link" href="about.jsp">About
						us</a></li>
				<li class="nav-item"><a class="nav-link" href="logoutServlet">Logout</a></li>
			</ul>

		</div>
	</nav>

	<h4>You will be booked just refresh the page </h4>
	
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2", "root", "amo0380");
		Statement st = conn.createStatement();
		HttpSession session2 = request.getSession(false);
		String n = (String) session.getAttribute("uname");
		String str = "select * from ubooking where dtCustomerCreation >DATE_SUB(now(), INTERVAL 5 MINUTE) and bbooked=1 and username='"
		+ n + "'";
		ResultSet rs = st.executeQuery(str);

		int i = 0;

		while (rs.next()) {
	%>
	<tr>
		<td>Name:<%=rs.getString("name")%><br></td>
		<td>Address:<%=rs.getString("address")%><br></td>
		<td>Contact:<%=rs.getString("contact")%><br></td>

	</tr>
	<%
	}
	i++;

	
	conn.close();

	} catch (Exception e) {
	out.println("Error: " + e.toString());
	}
	%>
</body>
</html>