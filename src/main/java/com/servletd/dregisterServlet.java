package com.servletd;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOd.DriverDAO;
import com.DBd.DBConnectd;
import com.entitesd.Driver;

@WebServlet("/dregisterServlet")
public class dregisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String anum = request.getParameter("anum");
		String contact = request.getParameter("contact");

		Driver dr = new Driver();
		dr.setName(name);
		dr.setEmail(email);
		dr.setPassword(password);
		dr.setAnum(anum);
		dr.setContact(contact);

		DriverDAO daod = new DriverDAO(DBConnectd.getConnection());
		boolean f = daod.driverRegister(dr);

		if (f == true) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Registration Sucessful...");
			response.sendRedirect("dregister.jsp");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("dregister.jsp");
		}

	}
}
