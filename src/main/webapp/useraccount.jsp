<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="adx" items="${adxDetails}">
	
	<c:set var="id" value="${adx.id}"/>
	<c:set var="name" value="${adx.name}"/>
	<c:set var="email" value="${adx.email}"/>
	<c:set var="phone" value="${adx.phone}"/>
	<c:set var="username" value="${adx.userName}"/>
	<c:set var="password" value="${adx.password}"/>
	
	<tr>
		<td>admin ID</td>
		<td>${adx.id}</td>
	</tr>
	<tr>
		<td>admin Name</td>
		<td>${adx.name}</td>
	</tr>
	<tr>
		<td>admin Email</td>
		<td>${adx.email}</td>
	</tr>
	<tr>
		<td>admin Phone</td>
		<td>${adx.phone}</td>
	</tr>
	<tr>
		<td>admin User Name</td>
		<td>${adx.userName}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updateadmin.jsp" var="adxupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${adxupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deleteadmin.jsp" var="adxdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${adxdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>