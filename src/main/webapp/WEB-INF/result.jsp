<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Films</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Spectral:wght@500&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link href="resultstylesheet.css" type="text/css" rel="stylesheet" />
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light" id="navDesign">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">

			<li class="nav-item"><a class="nav-link"
				href=${pageContext.request.contextPath}>Home</a></li>
			<li class="nav-item acticve"><a class="nav-link"
				href="filmbykey.jsp">Keyword Search</a></li>
			<li class="nav-item"><a class="nav-link" href="filmbyid.jsp">ID
					Search</a></li>
			<li class="nav-item"><a class="nav-link" href="createfilm.jsp">Add
					Film</a></li>

			<li class="nav-item"><a class="nav-link" href="deletefilm.jsp">Delete
					Film</a></li>

		</ul>
	</div>
	</nav>

	<c:choose>
		
		<c:when test="${! empty film}">

			<ul id="resultList">
				<h3>Film Lookup / Created / Edited:</h3>


				<form action="updatefilm.jsp" method="GET">
					<input type="hidden" name="filmId" value="${film.id}" /> <input
						type="hidden" name="filmTitle" value="${film.title}" /> <input
						type="hidden" name="filmDescription" value="${film.description}" />
					<input type="hidden" name="filmLanguageId" value="${film.language}" />
					<input type="hidden" name="filmReleaseYear"
						value="${film.releaseYear}" /> <input type="hidden"
						name="filmRating" value="${film.rating}" /> <input type="submit"
						value="Edit Film Data" />
				</form>
				
				<form action="deletefilm.do" method="POST">
					<input type="hidden" name="id" value="${film.id}" /> <input
						type="hidden" name="filmTitle" value="${film.title}" /> 
						 <input type="submit"
						value="Delete Film" />
				</form>



				<li>Film ID: ${film.id}</li>
				<li>Title: ${film.title}</li>
				<li>Description: ${film.description}</li>
				<li>Release Year: ${film.releaseYear}</li>
				<li>Rating: ${film.rating}</li>
				<li>Language: ${film.language}</li>
				<li>Category: ${film.category} </li>
				<%-- <c:out value="${film.category}"/> --%>
				

				<li>Cast:</li>
				<c:forEach var="a" items="${film.actors}">
					<ul>
						<li>${a.firstName}  ${a.lastName}</li>
					</ul>
				</c:forEach>
				
		


			</ul>
		</c:when>

		<c:when test="${! empty films}">
			<ul>
					<h3>Here is what we found:</h3>
				<c:forEach var="f" items="${films}">
				<br>
				<h4>Film:</h4>
					<h3>Film found:</h3>

					<form action="updatefilm.jsp" method="GET">
						<input type="hidden" name="filmId" value="${f.id}" /> 
						<input type="hidden" name="filmTitle" value="${f.title}" /> 
						<input type="hidden" name="filmDescription" value="${f.description}" />
						<input type="hidden" name="filmLanguageId" value="${f.language}" />
						<input type="hidden" name="filmReleaseYear" value="${f.releaseYear}" /> 
						<input type="hidden" name="filmRating" value="${f.rating}" /> 
						<input type="submit" value="Edit Film Data" />
					</form>
					
					
					<form action="deletefilm.do" method="POST">
					<input type="hidden" name="id" value="${f.id}" /> <input
						type="hidden" name="filmTitle" value="${f.title}" /> 
						 <input type="submit"
						value="Delete Film" />
				</form>


					<li>Film ID: ${f.id}</li>
					<li>Title: ${f.title}</li>
					<li>Description: ${f.description}</li>
					<li>Release Year: ${f.releaseYear}</li>
					<li>Rating: ${f.rating}</li>
				<li>Category: ${f.category} </li>
			<!--	<c:out value="${film.category}"/> -->

					<li>Language: ${f.language}</li>
					<li>Film ID: ${f.id}</li>
					<br>
					
					
					<li>Cast:</li>
					<c:forEach var="a" items="${f.actors}">
						<ul>
							<li>${a.firstName}  ${a.lastName}</li>
						</ul>

					</c:forEach>
				</c:forEach>
				

			</ul>
					<br>
		</c:when>
		<c:otherwise>
			<p>No film found!</p>
		</c:otherwise>


	</c:choose>



</body>
</html>