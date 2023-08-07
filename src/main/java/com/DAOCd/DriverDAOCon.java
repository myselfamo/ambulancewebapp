package com.DAOCd;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entitesCd.DriverCon;
import com.entitesd.Driver;

public class DriverDAOCon {
	private Connection conn1;

	public DriverDAOCon(Connection conn1) {
		super();
		this.conn1 = conn1;
	}

	public boolean driverRegisterinfo(DriverCon dr) {
		boolean f = false;
		try {
			String qu = "insert into dcontact(name,email,info) values (?,?,?)";
			PreparedStatement ps = conn1.prepareStatement(qu);
			ps.setString(1, dr.getName());
			ps.setString(2, dr.getEmail());
			ps.setString(3, dr.getInfo());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}
}
