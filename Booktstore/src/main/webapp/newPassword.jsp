<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
<%
if(session.getAttribute("username")== null){
	response.sendRedirect("index.jsp");
}
%>
<div class="form-center">
	<form>
		<table border="1">
				<tr>
					<th colspan="2">Enter Information Here</th>
				</tr>
				<tr>
					<td>New Password</td>
					<td><input type="text" name="newpassword">*</td>
				</tr>
				
				<tr>
					<td>Confirm New Password</td>
					<td><input type="text" name="confirmpassword">*</td>
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