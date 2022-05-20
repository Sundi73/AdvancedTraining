package com.mycompany.app;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.Dao.UserDao;
import com.mycompany.domain.User;

@WebServlet("/forgetPassword")
public class forgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDao dao = new UserDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String usernameCheck = request.getParameter("usernameCheck");
		
		User user = dao.getUser(usernameCheck);
		
		if(user != null) {
			if(usernameCheck.equals(user.getUserName())) {
			response.sendRedirect("welcome.jsp");
			}else {
				response.sendRedirect("forgotpassword.jsp");
			}
		}else {
			response.sendRedirect("forgotpassword.jsp");
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
