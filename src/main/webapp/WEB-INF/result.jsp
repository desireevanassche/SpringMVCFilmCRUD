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
				<h3>Film found:</h3>
					<li>Film ID: ${film.id}</li>
					<li>Title: ${film.title}</li>
					<li>Description: ${film.description}</li>
					<li>Release Year: ${film.releaseYear}</li>
			</ul>
		</c:when>

		<c:when test="${! empty films}">
			<ul>
				<c:forEach var="f" items="${films}">
				<h3>Film found:</h3>
					<li>Film ID: ${f.id}</li>
					<li>Title: ${f.title}</li>
					<li>Description: ${f.description}</li>
					<li>Release Year: ${f.releaseYear}</li>
					<br>
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

</body>
</html>