<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: 50px;
	width: 100%;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 170px 570px;
	text-align: center;
}

body {
	background-image:
		url("https://img.wallpapic.com/i6793-333-517/thumb/wood-wooden-brown-light-wallpaper.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

legend {
	color: white;
}

tr {
	text-align: center;
}

td {
	color: white;
}
</style>
</head>
<body>
	<fieldset>
		<%
		if (msg != null) {
		%>

		<%=msg%>

		<%
		}
		%>
		<legend>Login</legend>
		<form method="post" action="./home">
			<table>
				<tr>
					<td><label>UserName</label></td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>