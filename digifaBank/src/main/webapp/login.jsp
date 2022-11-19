<%@include file="header.jsp" %> 
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.List" %>
<%
try {
 String databaseName = "digifa"; 
String url = "jdbc:mysql://localhost:3307/" + databaseName;
String username ="root";
 String password ="root";
	response.setContentType("text/html");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String insert = "select * from signup where username = ? and password= ?;";
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url,username,password);
	ResultSet rows;
	PreparedStatement stmt = conn.prepareStatement(insert);
	stmt.setString(1,u);
	stmt.setString(2,p);
	rows =	stmt.executeQuery();
	if(rows.next()) {
		session = request.getSession();
		String email = rows.getString("email");
		String id = rows.getString("register_user_id");
		session.setAttribute("name", u);
		session.setAttribute("email", email);
		session.setAttribute("register_user_id", id);
		response.sendRedirect("summary.jsp");
		 out.println("Database Connected"); 
		 out.println ("Database closed");
	} else {
		out.print("username & password error");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.include(request, response);

	} }catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

   %>
	 <%@ include file="footer.jsp"%>
   