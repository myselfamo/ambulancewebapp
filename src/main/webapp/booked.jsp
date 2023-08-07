<%@page import="com.servletB.bookingServlet"%>
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
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="">Your
						Booking</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact
						Us</a></li>

				<li class="nav-item"><a class="nav-link" href="about.jsp">About
						us</a></li>
				<li class="nav-item"><a class="nav-link" href="logoutServlet">Logout</a></li>

			</ul>

		</div>
	</nav>

	<Center>

		</tr>
		<%
		String id = request.getParameter("id");
		bookingServlet s=new bookingServlet();
		 HttpSession session2=request.getSession(false);  
	     String n=(String)session.getAttribute("uname");  
	     // out.print("Hello "+n);  
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2", "root", "amo0380");
			Statement st = conn.createStatement();
				int i = st.executeUpdate("DELETE FROM dbooking WHERE id=" + id);
				int j = st.executeUpdate("update ubooking set Driverid="+id+",bbooked=1 where username='" +n+"'");
				out.println("your ambulance has been booked");
				out.println(n);
			
			
			
			conn.close();

		} catch (Exception e) {
			out.println("Error: " + e.toString());
		}
		%>

		</table>

	</Center>


	<div class="book-container">
		<a href="#" class="book-btn" action="booked1.jsp">Click to Confirm Booking  <i class="fas fa-pen"></i>
		</a>
		<div class="countdown"></div>


	</div>
	</div>

	<script type="text/Javascript">
      const bookBtn = document.querySelector(".book-btn");
      const countdown = document.querySelector(".countdown");
      var timeLeft = 10;

      bookBtn.addEventListener("click", () =>{
          bookBtn.style.display = "none";
          countdown.innerHTML = "ambulance will arrive in <span>"+ timeLeft +"</span> minutes.";

          var bookTimer = setInterval(function timeCount(){
            timeLeft -= 1;
            countdown.innerHTML = "ambulance will arrive in <span>"+ timeLeft +"</span> minutes.";
             if(timeLeft <=0){
                 clearInterval(bookTimer);
             }

          },1000);
      });

    </script>
</body>
</html>