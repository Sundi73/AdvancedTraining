package com.mycompany.jdbc;

import java.sql.*;

public class GetConnection {
	public static Connection connection;
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/bookstore","root","1234567890");
			
			return connection;
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
	
}
