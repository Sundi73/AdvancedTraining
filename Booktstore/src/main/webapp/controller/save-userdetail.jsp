<%@page import="com.mycompany.domain.User"%>
<%@page import="com.mycompany.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	UserDao dao = new UserDao();
	User user = new User();
	user.setFullName(request.getParameter("fullname"));
	user.setAddress(request.getParameter("address"));
	user.setEmail(request.getParameter("email"));
	user.setUserName(request.getParameter("username"));
	user.setUserPass(request.getParameter("password"));
	dao.insertUserDetail(user);
	
	response.sendRedirect("./index.jsp");

%>

</body>
</html>