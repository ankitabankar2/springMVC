<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String name = (String) request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Students</title>
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
		<legend>Insert Student Details</legend>
		<form method="post" action="./addStudent">
			<table>
				<tr>
					<td><label>Name</label></td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td><label>UserName</label></td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add Student"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (name != null) {
	%>

	<h3>
		Successfully added
		<%=name%>
		to the database
	</h3>
	<%
	}
	%>
</body>
</html>
