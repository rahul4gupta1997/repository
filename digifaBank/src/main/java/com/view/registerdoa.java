package com.view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.register;

public class registerdoa {
	static Connection connection = null;
	static String url = "jdbc:mysql://localhost:3307/" ;
	String username ="root";
	static String password ="root";
	
	private static final String Insert_register_query = "insert into register(\r\n"
			+ "`login_id`,\r\n"
			+ "`first_name`,\r\n"
			+ "`last_name`,\r\n"
			+ "`middle_name`,\r\n"
			+ "`mother_name`,\r\n"
			+ "`father_name`,\r\n"
			+ "`date_of_birth`,\r\n"
			+ "`place_of_birth`,\r\n"
			+ "`gender` ,\r\n"
			+ "`marital_status`,\r\n"
			+ "`nationality`,\r\n"
			+ "`home_address`,\r\n"
			+ "`street_address`,\r\n"
			+ "`city`,\r\n"
			+ "`state`,\r\n"
			+ "`country`,\r\n"
			+ "`zipcode`,\r\n"
			+ "`phone_number`,\r\n"
			+ "`email`,\r\n"
			+ "`account_type`,\r\n"
			+ "`pan`,\r\n"
			+ "`aadhar`,\r\n"
			+ "`photo` ,\r\n"
			+ "`signature` ,\r\n"
			+ "`account_number`,\r\n"
			+ "`ifsc_code`\r\n"
			+ ")\r\n"
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
	private static final String Select_user_by_id ="select * from register where login_id = ?;";
	private static final String Select_all_user ="select * from register";
	private static final String Delete_user_by_id ="delete * from register where login_id = ?;";
	private static final String Update_user_by_id ="Update register set name = ?, email = ?   where login_id = ?;";
	protected Connection getConnection() throws ClassNotFoundException {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url,username,password);
			}catch(SQLException e){
				e.printStackTrace();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		return connection;
	}
	public void insertUser(register r) {
		try(Connection connection = getConnection(); 
				PreparedStatement preparestatement = connection.prepareStatement(Insert_register_query)){
				preparestatement.setInt(1, r.getLogin_id());
				preparestatement.setString(2, r.getFirst_name());
				preparestatement.setString(3, r.getLast_name());
				preparestatement.setString(4, r.getMiddle_name());
				preparestatement.setString(5, r.getMother_name());
				preparestatement.setString(6, r.getFather_name());
				preparestatement.setString(7, r.getDate_of_birth());
				preparestatement.setString(8, r.getPlace_of_birth());
				preparestatement.setString(9, r.getGender());
				preparestatement.setString(10, r.getMarital_status());
				preparestatement.setString(11, r.getNationality());
				preparestatement.setString(12, r.getHome_address());
				preparestatement.setString(13, r.getStreet_address());
				preparestatement.setString(14, r.getCity());
				preparestatement.setString(15, r.getState());
				preparestatement.setString(16, r.getCountry());
				preparestatement.setInt(17, r.getZipcode());
				preparestatement.setLong(18, r.getPhone_number());
				preparestatement.setString(19, r.getEmail());
				preparestatement.setString(20, r.getAccount_type());
				preparestatement.setString(21, r.getPan());
				preparestatement.setString(22, r.getAadhar());
				preparestatement.setString(23, r.getPhoto());
				preparestatement.setString(24, r.getSignature());
				preparestatement.setLong(25, r.getAccount_number());
				preparestatement.setLong(26, r.getIfsc_code());
				preparestatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//https://github.com/RameshMF/jsp-servlet-jdbc-mysql-crud-tutorial
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		registerdoa reg = new registerdoa();
		reg.insertUser(null);
	}

}
