<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookstore:Reset Password</title>
<style>
body{
background-color: yellow;
}
table {
	margin: auto;
	
}
th{
padding:10px;
}
td{
padding-right: 70px;
padding-top: 5px;
padding-bottom: 5px;
}
</style>
</head>
<body>

<div class="form-center">
	<form action="<%= request.getContextPath() %>/forgetPassword" method="post">
		<table border="1">
				<tr>
					<th colspan="2">Enter Information Here</th>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="emailCheck">*</td>
				</tr>
				
				<tr>
					<td>User Name</td>
					<td><input type="text" name="usernameCheck">*</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Submit"></input>
					</td>
				</tr>
		</table>
	</form>

</div>
</body>
</html>