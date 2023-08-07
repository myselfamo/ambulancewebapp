package com.DBC;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectC {
	private static Connection conn;

	public static Connection getConnection() {
		
		try {
			if(conn==null) {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2","root","amo0380");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return conn;
	}

}
