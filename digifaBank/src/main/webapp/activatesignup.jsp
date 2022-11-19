 <%@include file="header.jsp" %> 
 <%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ include file="inc/nav.jsp" %>
<%
	session = request.getSession();
 	String databaseName = "digifa"; 
 	String url = "jdbc:mysql://localhost:3307/" + databaseName;
	String username ="root";
 	String password ="root";
	String otp = request.getParameter("otp");
	String p =request.getParameter("password");
	String p1 = request.getParameter("password1");
	String u = request.getParameter("username");
	String email = String.valueOf(session.getAttribute("email"));
	String otp2 = String.valueOf(session.getAttribute("otp"));
	
 	String id = String.valueOf(session.getAttribute("user_id"));
 	int ids =  Integer.valueOf(id);
	System.out.println(id);
	String insert = "INSERT INTO `digifa`.`signup`(`username`,`password`,`email`,`register_user_id`) VALUES(?,?,?,?);";
	String Update_B = "INSERT INTO `digifa`.`account_balance`(`User_id`,`debit_amount`,`credit_amount`,`Total_amount`,`ArrivalDate`,`description`) VALUES(?,0,1000,1000,now(),?);";
	

	String account =(String)session.getAttribute("accountno");
		if(!otp.equals(otp2)){
			response.sendRedirect("index.jsp");
		}
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection(url,username,password);
			PreparedStatement stmt = conn.prepareStatement(insert);
			stmt.setString(1,u);
			stmt.setString(2,p);
			stmt.setString(3,email);
			stmt.setString(4, id);
			PreparedStatement transfer = conn.prepareStatement(Update_B);
			transfer.setInt(1, ids);
			transfer.setString(2, "Initial Amount");
			System.out.println(transfer);
			int entry = transfer.executeUpdate();
			int status = stmt.executeUpdate();
			if(status !=0){
				System.out.println("Database was connected and inserted success");
				out.println("Your account is successfully activated");
				out.println("<a href='index.jsp#login'>Click to go login page</a>");	
			}else{
				out.println("<a href='activate.jsp'>Unable to activate account.</a>");	
			}
			if(entry !=0){
				System.out.println("cash deposited");
			}else{
				System.out.println("Not Deposited");
			}
 %>

 <%@include file="footer.jsp" %>