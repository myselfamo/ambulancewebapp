package com.servletB;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DAOB.UserDAOB;
import com.DB.DBConnect;
import com.DBB.DBConnectB;
import com.entitesB.UserB;


@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	UserB ub =new UserB();	
	public String name ;
	public String name3 ;
	String address;
	String contact; 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 name = request.getParameter("name");
		 address= request.getParameter("address");
		 contact = request.getParameter("contact");
		
		 HttpSession session1=request.getSession();  
	     session1.setAttribute("uname",name+"_"+contact);  
		
		ub.setName(name);
		ub.setAddress(address);
		ub.setContact(contact);
		name3=ub.getName();
		UserDAOB dao=new UserDAOB(DBConnectB.getConnection());
		boolean f=dao.userBooking(ub);
		
		if(f==true) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Registration Sucessful...");
			response.sendRedirect("list.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("Booking.jsp");
			
		}
	}

}
