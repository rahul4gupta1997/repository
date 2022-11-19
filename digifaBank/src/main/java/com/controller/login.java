package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.loginDao;

/**
 * Servlet implementation class login
 */
@WebServlet(name="login", urlPatterns={"/login"},
initParams={ @WebInitParam(name="simpleParam", value="paramValue") } )
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String u = request.getParameter("Username");
			String p = request.getParameter("Password");

			loginDao dao = new loginDao();

			if (dao.check(u, p)) {

				HttpSession session = request.getSession();
				session.setAttribute("name", u);
				response.sendRedirect("register.jsp");
			} else {
				out.print("username & password error");
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp#login");
				rd.include(request, response);

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
