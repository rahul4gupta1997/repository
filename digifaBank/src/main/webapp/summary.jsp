<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Properties" %>

<%@include file="header.jsp" %> 

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	response.setHeader("Progma", "no-cache"); //Http 1.0
	response.setHeader("Exprires", "0"); // proxies
   %>
<%@ include file="inc/nav.jsp" %>
<%
String databaseName = "digifa"; 
String url = "jdbc:mysql://localhost:3307/" + databaseName;
String username ="root";
String password ="root";
System.out.println(session.getAttribute("register_user_id"));
int id= Integer.valueOf((String)session.getAttribute("register_user_id"));
System.out.println(id);

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection(url,username,password);
ResultSet rows;
String B = "SELECT Total_amount FROM digifa.account_balance  where user_id = ? order by id desc LIMIT 1;";
PreparedStatement user = conn.prepareStatement(B);
user.setInt(1,id);

String S = "SELECT account_number,ifsc_code,email,phone_number, account_type , pan , city , State,  country ,zipcode FROM digifa.register  where login_id = ? LIMIT 1";
PreparedStatement detail = conn.prepareStatement(S);
detail.setInt(1,id);

ResultSet debit = user.executeQuery();
ResultSet acc = detail.executeQuery();

System.out.println(user);
System.out.println("acc"+ acc);
%>

<div class="d-flex flex-row">
<div class="col-9 m-5">
<h2>Account Summary</h2>
<table class="table table-striped">

	
	 <%
while(acc.next()){%>
<tr>
 <th scope="col" colspan="2">Account Number</th>
	   <td><%= acc.getString(1) %></td>
	   
</tr>
<tr>
 <th scope="col" colspan="2">IFSC CODE</th>
	   <td><%= acc.getString(2) %></td>
	   
</tr>
<tr>
 <th scope="col" colspan="2">Account Type</th>
	   <td><%= acc.getString(5) %></td>
</tr>

<tr>
 <th scope="col" colspan="2">Phone Number</th>
	   <td><%= acc.getString(4) %></td>
</tr>

<tr>
 <th scope="col" colspan="2">Pan Number</th>
	   <td><%= acc.getString(6) %></td>
</tr>

<tr>
 <th scope="col" colspan="2">Email</th>
	   <td><%= acc.getString(3) %></td>
</tr>
<tr>
 <th scope="col" colspan="2">Address</th>
	   <td><%= acc.getString(7) + " " + acc.getString(8) +  " "  + acc.getString(9) + " "  + acc.getString(10) %></td>
</tr>
	<%} %>
<%
while(debit.next()){%>

    <tr>
	    <th scope="col" colspan="2">Net Position Amount(INR Equivalent)</th>
	   <th>Rs. <%= debit.getInt("Total_amount") %></th>
  	</tr>
</table>
</div>
<%} %>
<div class="col-3">
<div class="d-flex flex-column">
	<ul>
	    <li><a href="summary.jsp">Summary</a></li>
		<li><a href="transfer.jsp">Payment</a></li>
		<li><a href="balance.jsp">Account Statement</a></li>
		<li> <a href="issueCheque.jsp">Cheque Book</a></li>
	</ul>			
</div>
</div>
</div>
 <%@include file="footer.jsp" %>