package com.DAOd;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.DropMode;

import com.entitesd.*;

public class DriverDAO {
	private Connection conn1;

	public DriverDAO(Connection conn1) {
		super();
		this.conn1 = conn1;
	}

	public boolean driverRegister(Driver dr) {
		boolean f = false;
		try {
			String qu = "insert into driver(name,email,password,anum,contact) values (?,?,?,?,?)";
			PreparedStatement ps = conn1.prepareStatement(qu);
			ps.setString(1, dr.getName());
			ps.setString(2, dr.getEmail());
			ps.setString(3, dr.getPassword());
			ps.setString(4, dr.getAnum());
			ps.setString(5, dr.getContact());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}
	
	public Driver getLogin(String emd,String psd) {
		Driver dr=null;
		try {
			
			String qu="select * from driver where email=? and password=?";
			
			PreparedStatement pst=conn1.prepareStatement(qu);
			pst.setString(1, emd);
			pst.setString(2, psd);
			ResultSet rsd=pst.executeQuery();
			
			if(rsd.next()) {
				
				
				
				dr=new Driver(rsd.getInt(1),rsd.getString(2),rsd.getString(3),rsd.getString(4),rsd.getString(5),rsd.getString(6));
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dr;
	}

}
