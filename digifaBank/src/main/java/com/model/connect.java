package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class connect {
	
	//DB Connection 
	static Connection connection = null;
	static String databaseName = "digifa"; 
	static String url = "jdbc:mysql://localhost:3307/" + databaseName;
	static String username ="root";
	static String password ="root";
	
	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		//
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = connection.prepareStatement("insert into `digifa`.`signup`( `username`,`password`, `email`) values ( 'dipti' ,'dipti','dipti');");
		
		int status = ps.executeUpdate();
		if(status != 0) {
			System.out.println("Database was connected and inserted success");
		}
	}
}
