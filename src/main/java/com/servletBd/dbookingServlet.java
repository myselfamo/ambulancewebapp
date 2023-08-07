package com.servletBd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOBd.DriverDAOB;
import com.DAOCd.DriverDAOCon;
import com.DB.DBConnect;
import com.DBBd.DBConnectBd;
import com.DBd.DBConnectd;
import com.entitesBd.DriverB;
import com.entitesCd.DriverCon;

@WebServlet("/dbookingServlet")
public class dbookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		DriverB db = new DriverB();
		db.setName(name);
		db.setAddress(address);
		db.setContact(contact);
		

		DriverDAOB daod = new DriverDAOB(DBConnectBd.getConnection());
		boolean f = daod.driverBooking(db);

		if (f == true) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Message Sent Sucessfully  We will sent an email regarding this..");
			response.sendRedirect("success.jsp");
		} else {

			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Something went Wrong Server");
			response.sendRedirect("dBooking.jsp");
		}

	}

}
