package com.DBd;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectd {
	private static Connection conn1;

	public static Connection getConnection() {
		
		try {
			if(conn1==null) {
				Class.forName("com.mysql.jdbc.Driver");
				conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2","root","amo0380");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return conn1;

}
}
