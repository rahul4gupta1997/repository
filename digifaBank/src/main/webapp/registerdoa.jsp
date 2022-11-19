
<%@page import="java.io.File"%>
 <%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.Random" %>
<%@include file="header.jsp" %>
 <%@ include file="inc/nav.jsp" %>
 <%@page import="java.io.*" %>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	
	response.setHeader("Progma", "no-cache"); //Http 1.0
	
	response.setHeader("Exprires", "0"); // proxies
 	String databaseName = "digifa"; 
 	String url = "jdbc:mysql://localhost:3307/" + databaseName;
	String username ="root";
 	String password ="root";
    
 	String insert ="insert into register(\r\n"
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
			+ "`ifsc_code`,\r\n"
			+ "`pan_img`,\r\n"
			+ "`aadhar_img`\r\n"
			+ ")\r\n"
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		int account_number = new Random().nextInt(100000000);
		String account = String.valueOf(account_number);
		System.out.println(account);
		
		
		String ifsc_code = account.substring(0,4);
		System.out.println(ifsc_code);
		Connection conn = DriverManager.getConnection(url,username,password);
		PreparedStatement preparestatement = conn.prepareStatement(insert);
		preparestatement.setString(1, request.getParameter("first_name"));
		preparestatement.setString(2, request.getParameter("last_name"));
		preparestatement.setString(3, request.getParameter("middle_name"));
		preparestatement.setString(4, request.getParameter("mother_name"));
		preparestatement.setString(5, request.getParameter("father_name"));
		preparestatement.setString(6, request.getParameter("date_of_birth"));
		preparestatement.setString(7, request.getParameter("place_of_birth"));
		preparestatement.setString(8, request.getParameter("gender"));
		preparestatement.setString(9, request.getParameter("marital_status"));
		preparestatement.setString(10, request.getParameter("nationality"));
		preparestatement.setString(11, request.getParameter("home_address"));
		preparestatement.setString(12, request.getParameter("street_address"));
		preparestatement.setString(13, request.getParameter("city"));
		preparestatement.setString(14, request.getParameter("state"));
		preparestatement.setString(15, request.getParameter("country"));
		preparestatement.setString(16, request.getParameter("zipcode"));
		preparestatement.setString(17, request.getParameter("phone"));
		preparestatement.setString(18, request.getParameter("email"));
		preparestatement.setString(19, request.getParameter("account_type"));
	//	fis=new FileInputStream(image);
	//	preparestatement.setBinaryStream(20, (InputStream) fis, (int) (image.length()));
		preparestatement.setString(20, request.getParameter("pan"));
		preparestatement.setString(21, request.getParameter("aadhar"));
		preparestatement.setString(22, request.getParameter("photo"));
		preparestatement.setString(23, request.getParameter("signature"));
		preparestatement.setString(24, account);
		preparestatement.setString(25, ifsc_code);
		preparestatement.setString(26, request.getParameter("pan_img"));
		preparestatement.setString(27, request.getParameter("aadhar_img"));
		
		int status = preparestatement.executeUpdate();
		if(status !=0){
			System.out.println("<p>Database was connected and inserted success</p>");
			out.println("<p style='padding:5rem;'>Your account is successfully created. Your Account number  is " + account + "<br> Your IFSC Code is " + ifsc_code + "<br> Please save all these infomation for using Netbanking <br>");
			out.println("<a href='index.jsp#login'>Click to go login page</a></p>");	
		}else{
			out.println("<p><a href='activate.jsp' style='padding:5rem; margin:5rem;>Unable to open new account.</a></p>");	
		}
%>
 <%@include file="footer.jsp" %>