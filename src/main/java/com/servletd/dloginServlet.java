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

@WebServlet("/dloginServlet")
public class dloginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		DriverDAO daod=new DriverDAO(DBConnectd.getConnection());
		Driver driver=daod.getLogin(email, password);
		
		if(driver!=null) {
			
			HttpSession session=request.getSession();
			session.setAttribute("driver-ob", driver);
			response.sendRedirect("dhome.jsp");
			
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Invalid email & password");
			response.sendRedirect("dlogin.jsp");
		}
		
	}

}
