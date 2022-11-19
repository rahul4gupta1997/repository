<%@ page import="javax.mail.Authenticator" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Random" %>
<%@include file="header.jsp" %> 

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	
	response.setHeader("Progma", "no-cache"); //Http 1.0
	
	response.setHeader("Exprires", "0"); // proxies

   %>
   
   
<%@ include file="inc/nav.jsp" %>
<%
session = request.getSession();
String U_to = String.valueOf(session.getAttribute("email"));
int OTP = new Random().nextInt(10000);
session.setAttribute("otp",OTP);
String message = "your request for using transfering amount via net banking is  : " + OTP;
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

		m.addRecipient(Message.RecipientType.TO, new InternetAddress(U_to));
		// adding subject to message
		m.setSubject(subject);
		m.setText(message);

		// send
		Transport.send(m);
		out.println("<p class='text-center p-4'>Your One Time Password sent successfully. Please enter your One Time Password which you have received on mail.<p>");
	}catch(Exception e){
		
	}
		%>
<div class="d-flex mx-0 flex-row">
<div class="col-8 m-5 mx-0">
<h1>Fund Transfer</h1>
<form name="register col-9" action="transferDao.jsp" method="post"  class="py-4" >
<table class="table table-striped">
<thead>
    <tr class="">
	    <th scope="col" colspan="2"><label>Enter Beneficiary Account Number</label></th>
	    <td class="justify-content-center"><input type="text" class="form-control" name="B_Account" placeholder="Enter Beneficiary Account Number" required ></td>
  	</tr>
</thead>
<tbody>
  <tr>
	    <th scope="col" colspan="2"><label>Enter IFS Code</label></th>
	    <td><input type="text" class="form-control" name="IFS" placeholder="Enter Ifsc code" required ></td>
  	</tr>
  <tr>
	    <th scope="col" colspan="2"><label>Enter Amount</label></th>
	    <td><input type="text" class="form-control" name="amount" placeholder="Enter Amount" required ></td>
	       
	 
  	</tr>
  	<tr>
  	 <th scope="col" colspan="2"><label>Enter One Time Password </label></th>
  	   <td><input type="text" class="form-control" name="otp" placeholder="Enter Otp" required ></td>
  	   </tr>
  	<tr>
        <td>     <button type="submit"  name="submit" value="submit" class="btn btn-small p-3 m-3 px-lg-5">Proceed</button> </td>
             
         <td>     <input type="reset" value="Cancel" class="btn btn-small m-3 px-lg-5"/></td>
          
  	</tr>
  </tbody>
</table>
</form>
</div>
<div class="col-3">
<div class="d-flex flex-column fs-5">
<ul>
	    <li><a href="summary.jsp">Summary</a></li>
		<li><a href="transfer.jsp">Payment</a></li>
		<li><a href="balance.jsp">Account Statement</a></li>
	</ul>		
</div>
</div>
</div>



 <%@include file="footer.jsp" %>