<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookstore:RegisterUser</title>

<style>
td{
padding :10px;
}
body{
background-color: yellow;
}
table{
margin-left: auto;
margin-right: auto;
}
</style>
</head>
<body>
<%
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
%>
<h1 style="text-align:center">SHOPPING CART FOR BOOK SHOP</h1>
<h3 style="text-align:center">CUSTOMER REGISTERATION FORM</h3>

<form action="./controller/save-userdetail.jsp">
		<table border="1">
			<tr>
				<th colspan="2">Enter Information Here</th>
			</tr>
			<tr>
				<td>FullName : </td>
				<td><input type="text" name="fullname">*</td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address">*</td>
			</tr>
			<tr>
				<td>Email : </td>
				<td><input type="text" name="email">*</td>
			</tr>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="username">*</td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password">*</td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><button type="reset">Reset</button></td>
			</tr>
			<tr>
				<td colspan="2">Already Register!!<a href="index.jsp">Click here</a></td>
			</tr>
		</table>
	</form>
</body>
</html>