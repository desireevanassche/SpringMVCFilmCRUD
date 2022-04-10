<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Films</title>
</head>
<body>

	<h1>Film Data</h1>
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<h3>Film updated:</h3>
				<li>Title: ${film.title}</li>
				<li>Description: ${film.description}</li>
				<li>Release Year: ${film.releaseYear}</li>
				
			</ul>
		</c:when>

		<c:otherwise>
			<p>No film updated</p>
		</c:otherwise>

	</c:choose>
	<a href=${pageContext.request.contextPath}>Home</a>
	


</body>
</html>