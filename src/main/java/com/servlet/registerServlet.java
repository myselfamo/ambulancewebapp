package com.servlet;

import java.io.IOException;
import com.entites.*;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.User;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao=new UserDAO(DBConnect.getConnection());
		boolean f=dao.userRegister(us);
		
		if(f==true) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Registration Sucessful...");
			response.sendRedirect("register.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("register.jsp");
			
		}
	}

}
