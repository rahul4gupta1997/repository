<%@include file="header.jsp" %> 
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Random" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ include file="inc/nav.jsp" %>
<%
try {
    String databaseName = "digifa"; 
    String url = "jdbc:mysql://localhost:3307/" + databaseName;
	String username ="root";
	String password ="root";
	response.setContentType("text/html");
	String B_Account = request.getParameter("B_Account");
	String IFS = request.getParameter("IFS");
	String otp2 = request.getParameter("otp");
	System.out.println(otp2);
	
	int amount = Integer.valueOf(request.getParameter("amount"));
	System.out.println(amount);
	int id= Integer.valueOf((String)session.getAttribute("register_user_id"));
	System.out.println(id);
	String OTP = String.valueOf(session.getAttribute("otp"));
	System.out.println(OTP);
	String B_Select = "SELECT first_name, email,login_id FROM `digifa`.`register`  where account_number=? and ifsc_code=?";
	out.println("<p>Please Wait Transaction is in Processing</p>");
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url,username,password);
	ResultSet rows;
	PreparedStatement stmt = conn.prepareStatement(B_Select);
	stmt.setString(1,B_Account);
	stmt.setString(2,IFS);
	String B = "SELECT d.Total_amount as debit_total, c.Total_amount as credit_total FROM digifa.account_balance as d , digifa.account_balance as c   where d.user_id = ? and c.User_id=?   order by d.id desc LIMIT 1;  ";
	PreparedStatement user = conn.prepareStatement(B);
	user.setInt(1,id);
	System.out.println(user);
	rows = stmt.executeQuery();
	if(!OTP.equals(otp2)){
		out.print("<p>You have enter wrong OTP.");
		out.print("Please Try Again</p>");
		out.println("<p><a href='transfer.jsp'>Click to again to Transfer Fund</a></p>");
		 RequestDispatcher rd = request.getRequestDispatcher("/Transfer.jsp");
		 rd.include(request, response);
	}
	if(!rows.next()) {
		out.print("<p>You have enter wrong detail</p>");
		RequestDispatcher rd = request.getRequestDispatcher("/transfer.jsp");
		rd.include(request, response);
	}
	
		 String B_Name = rows.getString("first_name");
		 String B_to = rows.getString("email");
		 int B_id = rows.getInt("login_id");
		 System.out.println(B_id);
		 user.setInt(2, B_id);
			ResultSet debit = user.executeQuery();
		 if(!debit.next()){
			 out.print("<p>You have enter wrong detail</p>");
		     RequestDispatcher rd = request.getRequestDispatcher("/Transfer.jsp");
				rd.include(request, response);
		 }
		 
		 String U_to = String.valueOf(session.getAttribute("email"));
		 String B_message = "your have received an amount of for using transfering amount via net banking is  : " + amount + " received"; 
		 String message = "your request for using transfering amount via net banking is  : " + amount + "is transferred In case of any suspense Contact now on Our Number 9996291540";
	     String subject = "Transferred completed";
		 String from = "unversity2021@gmail.com";
		 String host = "smtp.gmail.com";

			// get the properties
			Properties properties = System.getProperties();
			properties.put("mail.smtp.host", host);
			properties.put("mail.smtp.port", "465");
			properties.put("mail.smtp.user", "unversity2021");
			properties.put("mail.smtp.password", "university@123");
			properties.put("mail.smtp.ssl.enable", "true");
			properties.put("mail.smtp.auth", "true");

			Session s = Session.getInstance(properties, new Authenticator() {

				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					// TODO Auto-generated method stub
					return new PasswordAuthentication("unversity2021", "university@123");

				}

			});
			s.setDebug(true);

			MimeMessage m = new MimeMessage(s);
			MimeMessage m1 = new MimeMessage(s);
			try {

				m.setFrom(from);
				// adding recipient to message

				m.addRecipient(Message.RecipientType.TO, new InternetAddress(U_to));
				// adding subject to message
				m.setSubject(subject);
				m.setText(message);
				m1.setFrom(from);
				// adding recipient to message

				m1.addRecipient(Message.RecipientType.TO, new InternetAddress(B_to));
				// adding subject to message
				m1.setSubject(subject);
				m1.setText(B_message);
				// send
				Transport.send(m);
				Transport.send(m1);
			
				%>
				 
				<%
				int Total_U = debit.getInt("debit_total");
				
				int Total_b = debit.getInt("credit_total");
				
				if(Integer.compare(Total_U,amount) < 0){
					out.println("<p>you don't have sufficient amount.</p>");
					 RequestDispatcher rd = request.getRequestDispatcher("/Transfer.jsp");
					 rd.include(request, response);
				}
				int U_balance = Total_U - amount;
				int B_balance = Total_b + amount;
				int credit = 0;
				String Description = "Transfer amount of Rs."+ amount + "from" +id + "to" + B_id ;
				String Update_B = "INSERT INTO `digifa`.`account_balance`(`User_id`,`debit_amount`,`credit_amount`,`Total_amount`,`ArrivalDate`,`Beneficary_Account`,`description`) VALUES(?,?,?,?,now(),?,?);";
				String Update_U = "INSERT INTO `digifa`.`account_balance`(`User_id`,`debit_amount`,`credit_amount`,`Total_amount`,`ArrivalDate`,`Beneficary_Account`,`description`) VALUES(?,?,?,?,now(),?,?);";
				PreparedStatement stmt_u = conn.prepareStatement(Update_U);
				stmt_u.setInt(1,id);
				stmt_u.setInt(2,amount);
				stmt_u.setInt(3, credit);
				stmt_u.setInt(4,U_balance);
				stmt_u.setInt(5,B_id);
				stmt_u.setString(6,Description);
				PreparedStatement stmt_b = conn.prepareStatement(Update_B);
				stmt_b.setInt(1,B_id);
				stmt_b.setInt(3,amount);
				stmt_b.setInt(2, credit);
				stmt_b.setInt(4, B_balance);
				stmt_b.setInt(5,id);
				stmt_b.setString(6,Description);
				int status = stmt_b.executeUpdate();
				int status2 = stmt_u.executeUpdate();
				if(status !=0){
					if(status2 !=0){
						out.println("<p>Your Transaction is success.</p>");
						out.println("<a href='summary.jsp'>Click to goto summary page</a>");	
					}
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			
	} }catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

   %>
    <%@include file="footer.jsp" %>