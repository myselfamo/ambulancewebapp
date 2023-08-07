package com.servletC;

import java.io.IOException;

import java.lang.ProcessHandle.Info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DAOC.UserDAOCon;

import com.DB.DBConnect;
import com.entitesC.UserCon;


@WebServlet("/contactServlet")
public class contactServlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String info = request.getParameter("info");
		
		UserCon us=new UserCon();
		us.setName(name);
		us.setEmail(email);
		us.setInfo(info);
		
		UserDAOCon dao=new UserDAOCon(DBConnect.getConnection());
		boolean f=dao.userRegisterInfo(us);
		
		if(f==true) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Message Sent Sucessfully  We will sent an email regarding this..");
			response.sendRedirect("contact.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("contact.jsp");
			
		}
	}
	}

