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
	String Date = request.getParameter("Date");
	String account_number =request.getParameter("account_number");
	String pan = request.getParameter("pan");
	String u = request.getParameter("username");
	String p = request.getParameter("password");
	String p2 = request.getParameter("password1");
	session.setAttribute("accountno",account_number);
	String Select = "SELECT first_name, email,login_id FROM `digifa`.`register` where account_number=? and date_of_birth=? and pan=?;";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url,username,password);
	ResultSet rows;
	PreparedStatement stmt = conn.prepareStatement(Select);

	stmt.setString(2,Date);
	stmt.setString(1,account_number);
	stmt.setString(3,pan); 
	System.out.println(stmt);
	rows = stmt.executeQuery();
	
	if(!rows.next()) {
		out.print("You have enter wrong detail");
	}else{
		 String Name = rows.getString("first_name");
		 String to = rows.getString("email");
		 int user_id = rows.getInt("login_id");
		 session = request.getSession();
		 session.setAttribute("email", to);
		 session.setAttribute("user_id",user_id);
		 int OTP = new Random().nextInt(10000);
		 session.setAttribute("otp",OTP);
		 String message = "your request for using online net banking is starting.Please enter the One time Password to reset your password" + OTP;
	     String subject = "One Time password";
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

			try {

				m.setFrom(from);
				// adding recipient to message

				m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				// adding subject to message
				m.setSubject(subject);
				m.setText(message);

				// send
				Transport.send(m);
				out.println("<p class='text-center'>Your One Time Password sent successfully. Please enter your Otp.<p>");
				%>
				  <form name="registeration" action="activatesignup.jsp" method="post" class="py-4 container" >
				     <div class="d-flex flex-row  flex-wrap align-item-center justify-content-center">
		<div class="input-group col-6 p-2">
            <label class="p-2 m-3">Enter your Username</label>
            <input type="text" name="username" placeholder="Username" size="15"class="form-control p-2 m-4" required /> 
          </div>
           <div class="input-group col-6 p-2 px-3">
            <label class="p-2 m-3">Enter otp</label>
            <input type="text" name="otp" placeholder="Enter Otp" size="15"class="form-control p-2 m-4" required /> 
          </div>
           <div class="input-group col-6 p-2">
            <label class="p-2 m-3">Enter your Password</label>
            <input type="password" name="password" placeholder="password" size="15"class="form-control p-2 m-4" required /> 
          </div>
           <div class="input-group col-6 p-2">
            <label class="p-2 m-3">Re-enter your Password</label>
            <input type="password" name="password1" placeholder="Re-enter your Password" size="15"class="form-control p-2 m-4" required /> 
          </div>
				 <p class="text-center"><button type="submit" class="btn btn-warning  mt-3 px-lg-5">Register</button>    
		<button type="submit" class="btn btn-secondary  mt-3 px-lg-5">Cancel</button> </p>
		</div>
        </form>
				<%
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		 
	} }catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

   %>
    <%@include file="footer.jsp" %>