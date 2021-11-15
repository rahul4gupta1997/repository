package com.model;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class register {
	private int login_id;
	private String first_name;
	private String last_name;
	private String middle_name;
	private String mother_name;
	private String father_name;
	private String  date_of_birth;
	private String place_of_birth;
	private String gender;
	private String marital_status;
	private String nationality;
	private String home_address;
	private String street_address;
	private String city;
	private String state;
	private String country;
	private int zipcode;
	private long  phone_number;
	private String email;
	private String account_type;
	private String pan;
	private String aadhar;
	private String photo;
	private String signature;
	private long  account_number;
	private long ifsc_code;
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	public String getMother_name() {
		return mother_name;
	}
	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(String string) {
		this.date_of_birth = string;
	}
	public String getPlace_of_birth() {
		return place_of_birth;
	}
	public void setPlace_of_birth(String place_of_birth) {
		this.place_of_birth = place_of_birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMarital_status() {
		return marital_status;
	}
	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getHome_address() {
		return home_address;
	}
	public void setHome_address(String home_address) {
		this.home_address = home_address;
	}
	public String getStreet_address() {
		return street_address;
	}
	public void setStreet_address(String street_address) {
		this.street_address = street_address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public long getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(long phone_number) {
		this.phone_number = phone_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String string) {
		this.photo = string;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String string) {
		this.signature = string;
	}
	public long getAccount_number() {
		return account_number;
	}
	public void setAccount_number(long account_number) {
		this.account_number = account_number;
	}
	public long getIfsc_code() {
		return ifsc_code;
	}
	public void setIfsc_code(long ifsc_code) {
		this.ifsc_code = ifsc_code;
	}
	public register(int login_id, String first_name, String last_name, String middle_name, String mother_name,
			String father_name, String date_of_birth, String place_of_birth, String gender, String marital_status,
			String nationality, String home_address, String street_address, String city, String state, String country,
			int zipcode, long phone_number, String email, String account_type, String pan, String aadhar, String photo,
			String signature, long account_number, long ifsc_code) {
		super();
		this.login_id = login_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.middle_name = middle_name;
		this.mother_name = mother_name;
		this.father_name = father_name;
		this.date_of_birth = date_of_birth;
		this.place_of_birth = place_of_birth;
		this.gender = gender;
		this.marital_status = marital_status;
		this.nationality = nationality;
		this.home_address = home_address;
		this.street_address = street_address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zipcode = zipcode;
		this.phone_number = phone_number;
		this.email = email;
		this.account_type = account_type;
		this.pan = pan;
		this.aadhar = aadhar;
		this.photo = photo;
		this.signature = signature;
		this.account_number = account_number;
		this.ifsc_code = ifsc_code;
	}
	
	public register() {
		super();
	}
	
	@Override
	public String toString() {
		return "(" + login_id + "," + first_name + "," + last_name
				+ ", " + middle_name + ", " + mother_name + ", " + father_name
				+ ", " + date_of_birth + ", " + place_of_birth + ", " + gender
				+ "," + marital_status + "," + nationality + ","
				+ home_address + "," + street_address + ", " + city + ", " + state
				+ "," + country + "," + zipcode + "," + phone_number + ","
				+ email + "," + account_type + "," + pan + ", " + aadhar + ", " + photo
				+ ", " + signature + "," + account_number + ", " + ifsc_code + ")";
	}
	static Connection connection = null;
	static String databaseName = "digifa"; 
	static String url = "jdbc:mysql://localhost:3307/" + databaseName;
	static String username ="root";
	static String password ="root";
	
	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		register r = new register();
		r.setLogin_id(3);
		r.setFirst_name("rahul");
		r.setLast_name("gupta");
		r.setMiddle_name("kumar");
		r.setMother_name("sangita devi");
		r.setFather_name("upender gupta");
		r.setDate_of_birth("4/6/1997");
		r.setPlace_of_birth("panipat");
		r.setGender("male");
		r.setMarital_status("unmarried");
		r.setNationality("indian");
		r.setHome_address("123 hdjd niwas");
		r.setStreet_address("parkash nagar tehsil town");
		r.setCity("panipat");
		r.setState("haryana");
		r.setCountry("india");
		r.setZipcode(132103);
		r.setPhone_number(9996291540L);
		r.setEmail("golu4gupta@gmail.com");
		r.setAccount_type("saving");
		r.setPan("absfs1234s");
		r.setAadhar("1234123412341230");
		r.setPhoto("photo");
		r.setSignature("signature");
		r.setAccount_number(28938382281L);
		r.setIfsc_code(1682937829L);
		System.out.println(r.toString());
	
	}
	
}
