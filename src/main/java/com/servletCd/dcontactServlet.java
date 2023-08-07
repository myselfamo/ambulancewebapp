package com.servletCd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOCd.DriverDAOCon;
import com.DAOd.DriverDAO;
import com.DBd.DBConnectd;
import com.entitesCd.DriverCon;
import com.entitesd.Driver;


@WebServlet("/dcontactServlet")
public class dcontactServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String info = request.getParameter("info");
		
		DriverCon dr = new DriverCon();
		dr.setName(name);
		dr.setEmail(email);
		dr.setInfo(info);
		

		DriverDAOCon daod = new DriverDAOCon(DBConnectd.getConnection());
		boolean f = daod.driverRegisterinfo(dr);

		if (f == true) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Message Sent Sucessfully  We will sent an email regarding this..");
			response.sendRedirect("dcontact.jsp");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("dcontact.jsp");
		}

	}
}
