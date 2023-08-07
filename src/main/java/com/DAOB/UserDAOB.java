package com.DAOB;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.entites.User;
import com.entitesB.UserB;

public class UserDAOB {
	private Connection conn;

	public UserDAOB(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userBooking(UserB us) {
		boolean f = false;
		try {
			 Date date = new Date(0L);
		      //Setting time
		      date.setTime(new java.util.Date().getTime());
			String qu = "insert into ubooking(name,address,contact,dtCustomerCreation,username) values(?,?,?,Time(?),?)";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, us.getName());
			ps.setString(2, us.getAddress());
			ps.setString(3, us.getContact());
		
			ps.setTime(4,new Time(date.getTime()));
			ps.setString(5, us.getName()+"_"+us.getContact());
			
			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	 private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
	        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
	        return sDate;
	    }
}
