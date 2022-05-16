<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookstore</title>
<style>
body{
background-color: yellow;
}
td{
 padding: 10px;
}
table{
margin-left: auto;
margin-right: auto;
}
</style>
</head>
<body>
<h1 style="text-align:center">SHOPPING CART FOR BOOK SHOP</h1>
<h3 style="text-align:center">Welcome to LandMark Book Shop</h3>
<h3 style="text-align:center">Pune</h3>

<h4 style="text-align:center">This site allows you to purchase books online .All you have to do is simply register yourself,buy a book that will be delivered to your home.</h4>
<h3 style="text-align:center">GET READY TO SHOP!!!!</h3>
<div class="form-center">
	<form action="<%=request.getContextPath()%>/Login" method="post">
		<table border="1">
			<tr>
				<th colspan="2">Login Here</th>
			</tr>
			<tr>
				<td>User Name: </td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="upass" required="required"></td>
			</tr>
			<tr>
				<td><input type="submit" name="Login" value="Login"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
			<tr>
			<td colspan="2">Not Register ? click here <a href="register.jsp">Register here!!</a></td>
			</tr>
			<tr>
			<td colspan="2"><a href="/forgotpassword.jsp">Forget Password?</a></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>