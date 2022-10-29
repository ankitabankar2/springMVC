<%@page import="com.ankitab.springMVC.DTO.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<StudentDTO> students = (List<StudentDTO>) request.getAttribute("students");
%>
<%
String msg = (String) request.getAttribute("msg");
%>
<%!int i;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Students</title>
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
table {
	margin: auto;
}
</style>
</head>
<body>
	<fieldset>
		<legend>Remove Students</legend>
		<form method="post" action="./removeStudent">
			<table>
				<tr>
					<td><label>Enter Student ID</label></td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Remove"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (msg != null) {
	%>
	<h3><%=msg%></h3>
	<%
	}
	%>
	<%
	if (students != null) {
	%>
	<table>
		<tr>
			<td><h3>ID</h3></td>
			<td><h3>Name</h3></td>
			<td><h3>Email</h3></td>
		</tr>
		<%
		for (i = 0; i < students.size(); i++) {
		%>
		<tr>
			<td><%=students.get(i).getId()%></td>
			<td><%=students.get(i).getName()%></td>
			<td><%=students.get(i).getEmail()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}
	%>
</body>
</html>