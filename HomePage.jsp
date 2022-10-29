<%@page import="com.ankitab.springMVC.DTO.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp"></jsp:include>
<%
StudentDTO student = (StudentDTO) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style type="text/css">
body {
	background-image:
		url("https://media.istockphoto.com/photos/forest-wooden-table-background-summer-sunny-meadow-with-green-grass-picture-id1353553203?b=1&k=20&m=1353553203&s=170667a&w=0&h=QTyTGI9tWQluIlkmwW0s7Q4z7R_IT8egpzzHjW3cSas=");
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
}

h1 {
	color: white;
}
</style>
</head>
<body>
	<%
	if (student != null) {
	%>
	<h1>
		Welcome
		<%=student.getName()%>
	</h1>
	<%
	}
	%>
</body>
</html>
