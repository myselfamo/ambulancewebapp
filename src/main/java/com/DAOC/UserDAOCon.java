package com.DAOC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entites.User;
import com.entitesC.UserCon;

public class UserDAOCon {
	private Connection conn;

	public UserDAOCon(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegisterInfo(UserCon us) {
		boolean f = false;
		try {
			String qu = "insert into contact(name,email,info) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getInfo());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
}
