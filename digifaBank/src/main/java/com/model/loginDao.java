package com.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.jdbc.JdbcPreparedStatement;

public class loginDao {
	String Username;
	String Password;
	String email;
	static int id;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public static String getInsert() {
		return Insert;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public loginDao(String username, String password, String email, int id) {
		super();
		Username = username;
		Password = password;
		this.email = email;
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "loginDao [Username=" + Username + ", Password=" + Password + ", email=" + email + "]";
	}
	public loginDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	private static final String Insert ="select * from signup where username = ? and password= ?;";
	public boolean check(String user , String pass) {
		ResultSet rows;
		try {
			
			 loginDao l = new loginDao();
			connect c = new connect();
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			PreparedStatement stmt = c.connection().prepareStatement(Insert);
			stmt.setString(1,user);
			stmt.setString(2,pass);
			rows =	stmt.executeQuery();
			if(rows.next()) {
				System.out.println(rows.getString("id"));
			}
	        c.connection().close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
//	public static void main(String[] args) {
//		loginDao l = new loginDao();
//		l.setUsername("rahul");
//		l.setPassword("rahul");
//		l.check("rahul","rahul");
//		}
}
