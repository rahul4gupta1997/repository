<%@include file="header.jsp" %> 

<%
	response.setContentType("text/html");

	session = request.getSession();
	session.removeAttribute("name");
	session.invalidate();
	response.sendRedirect("index.jsp");
	
   %>
