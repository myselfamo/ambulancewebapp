package com.DAOBd;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entitesB.UserB;
import com.entitesBd.DriverB;

public class DriverDAOB {
	private Connection conn1;

	public DriverDAOB(Connection conn1) {
		super();
		this.conn1 = conn1;
	}
	public boolean driverBooking(DriverB db) {
		boolean f = false;
		try {
			String qu = "insert into dbooking(name,address,contact) values(?,?,?)";
			PreparedStatement ps = conn1.prepareStatement(qu);
			ps.setString(1, db.getName());
			ps.setString(2, db.getAddress());
			ps.setString(3, db.getContact());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
}
