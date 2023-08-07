package com.servletd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/dlogoutServlet")
public class dlogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("driver-ob");
		
		HttpSession session2=request.getSession();
		session2.setAttribute("logout-msg", "Logout Sucessfully...");
		
		response.sendRedirect("dlogin.jsp");
	}
}
