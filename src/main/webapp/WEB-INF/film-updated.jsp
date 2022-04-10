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
				<li>Film ID: ${film.id}</li>
				<li>Title: ${film.title}</li>
				<li>Description: ${film.description}</li>
				<li>Release Year: ${film.releaseYear}</li>
				<li>Language: ${film.language}</li>
				
			</ul>
		</c:when>

		<c:otherwise>
			<p>No film updated</p>
		</c:otherwise>

	
	</c:choose>
	
		<form action="updatefilm.jsp" method="GET">
	
			<input type="hidden" name="filmId" value="${film.id}" /> 
			<input type="hidden" name="filmTitle" value="${film.title}" /> 
			<input type="hidden" name="filmDescription" value="${film.description}" /> 
			<input type="hidden" name="filmLanguageId" value="${film.language}" /> 
			<input type="hidden" name="filmReleaseYear" value="${film.releaseYear}" /> 
			<input type="hidden" name="filmRating" value="${film.rating}" /> 
			<input type="submit" value="Edit Film Data" />
		</form>

</body>
</html>