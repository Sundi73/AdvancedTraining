package com.mycompany.app;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycompany.Dao.UserDao;
import com.mycompany.domain.User;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 
    
	UserDao dao = new UserDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("uname");
		String userpass = request.getParameter("upass");
		
		User user = dao.getUser(username);
		if(user != null) {
			if(username.equals(user.getUserName()) && userpass.equals(user.getUserPass())) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username",username);
				response.sendRedirect("welcome.jsp");
				}else {					
					response.sendRedirect("index.jsp");				
			}	
		}else {
			response.sendRedirect("index.jsp");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
