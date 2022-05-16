<%@page import="com.mycompany.Dao.BookDao"%>
<%@page import="com.mycompany.domain.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.domain.User"%>
<%@page import="com.mycompany.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

body{
background-color: yellow;
}
.logout{
 background-color: white;
 color: red;
 position: absolute;
 right: 30px;
 border: 2px solid white;
 border-radius: 12px;
 padding: 5px;
  
}
th{
padding: 10px;
}
td{
padding:10px;
}
table{
margin-left: auto;
margin-right: auto;
background-color: white;
}

</style>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>

<%
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
%>
<div><h1 style="text-align:center">SHOPPING CART FOR BOOK SHOP</h1></div>

<form action="<%=request.getContextPath()%>/logout" class="logout" method="post">
<a href="index.jsp">logout</a>
</form>

<h3 style="text-align:center">LIST OF BOOKS</h3>
<table border="1">
<%
		List<Books> list = new BookDao().listOfBooks();
%>

<tr>
<th>Book ID</th>
<th>Book Name</th>
<th>Author</th>
<th>Price</th>
</tr>
<%
for(Books book : list){
%>
<tr>
<td style="color: blue;"><a href = "">C<%=book.getBookId() %></a></td>
<td><%=book.getBooName() %></td>
<td><%=book.getBookAuthor() %></td>
<td><%=book.getPrice() %></td>
</tr>



<%} %>

</table>
</body>
</html>