<%@include file="header.jsp" %> 
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Properties" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	
	response.setHeader("Progma", "no-cache"); //Http 1.0
	
	response.setHeader("Exprires", "0"); // proxies
   %>
   
   <%
 session = request.getSession();
String databaseName = "digifa"; 
String url = "jdbc:mysql://localhost:3307/" + databaseName;
String username ="root";
String password ="root";
System.out.println(session);
//String U_id =String.valueOf(session.getAttribute("user_id"));

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection(url,username,password);
int id= Integer.valueOf((String)session.getAttribute("register_user_id"));
String B = "SELECT * FROM digifa.account_balance  where user_id = ? order by id;";
PreparedStatement user = conn.prepareStatement(B);
user.setInt(1,id);
ResultSet debit = user.executeQuery();
%>
   
<%@ include file="inc/nav.jsp" %>
<div class="d-flex flex-row">
<div class="col-lg-8 col-12 m-5">
<h1>Account Statement</h1>
<table class="table table-striped" id="dataTables">
<thead>
    <tr>
   
      <th>S.No.</th>
	  <th scope="col">Txn No.</th>
	  <th scope="col">Txn Date</th>
	  <th scope="col">Description</th>
	  <th scope="col">Debit Amount</th>
	  <th scope="col">Credit Amount</th>
	  <th scope="col">Balance Amount</th>
  	</tr>
</thead>
<tbody>
  
  <% 
  int i = 0; 
  while(debit.next()){
	  i++;
  %>
  
  <tr>
  <th scope="col"><%= i %></th>
    <td><%= debit.getInt("id") %></td>
      <td><%= debit.getDate("ArrivalDate") %></td>
      <td><%= debit.getString("description") %></td>
    <td><%= debit.getInt("debit_amount") %></td>
    <td><%= debit.getInt("credit_amount") %></td>
     <td><%= debit.getInt("Total_amount") %></td>
       </tr>
<%
  } 
%>
  </tbody>
</table>
</div>
<div class="col-lg-3 col-3">
<div class="d-flex flex-column">
	<ul>
	    <li><a href="summary.jsp">Summary</a></li>
		<li><a href="transfer.jsp">Payment</a></li>
		<li><a href="balance.jsp">Account Statement</a></li>
	</ul>		
</div>
</div>
</div>
 <%@include file="footer.jsp" %>