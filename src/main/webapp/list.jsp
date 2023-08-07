<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.util.*"%>

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
				</a>
				</li>

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

	<table border="1">
		<tr>

			<th>Name</th>
			<th>Address</th>
			<th>Contact</th>

		</tr>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2", "root", "amo0380");
			Statement st = conn.createStatement();
			
			
			
			
			String str = "select * from dbooking";
			ResultSet rs = st.executeQuery(str);
			
			if(!rs.next()){
				
				out.println("Sorry no ambulance");
				
			}
			else{
				int i = 0;

				
			do{
			%>
			<tr>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("address")%></td>
				<td><%=rs.getString("contact")%></td>
				<td><a href="booked.jsp?id=<%=rs.getInt("id")%>"><button
							type="button" class="delete">Book</button></a></td>
			</tr>
			<%
			}
			while(rs.next());
			i++;


			}
					conn.close();

		} catch (Exception e) {
		out.println(e);
		}
		%>
	</table>
</body>
</html>