<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Spectral:wght@500&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />

</head>
<body>

	<%
	String passedFilmId = request.getParameter("filmId");
	%>
	<%
	String passedTitle = request.getParameter("filmTitle");
	%>
	<%
	String passedDescription = request.getParameter("filmDescription");
	%>
	<%
	String passedReleaseYear = request.getParameter("filmReleaseYear");
	%>
	<%
	String passedLanguageId = request.getParameter("filmLanguageId");
	%>
	<%
	String passedRating = request.getParameter("filmRating");
	%>


	<div class="row no-gutters">
		<div class="col" id="keywordLeft">
			<img id="keyPhoto"
				src="https://live.staticflickr.com/65535/51994660701_e982a349a0_z.jpg"
				alt="theater">
		</div>

		<div class="col" id="menu">


			
					<h1>Editing Film ID:
		<%=passedFilmId%></h1>
			<br>

			<form action="updatefilm.do" method="POST">


				<label for="filmId"></label> <input type="hidden" name="filmId"
					value="<%=passedFilmId%>"> <label for="title">Title:
				</label> <input type="text" name="title" value="<%=passedTitle%>"> <label
					for="description">description: </label> <input type="text"
					name="description" value="<%=passedDescription%>"> <br>
				<label for="releaseYear">Release Year: </label> <input type="text"
					name="releaseYear" value="<%=passedReleaseYear%>"> <br>
				<label for="languageID">Language ID: </label> <select
					name="languageID" id="languageID" value="<%=passedLanguageId%>">
					<option value="1">1 English</option>
					<option value="2">2 Italian</option>
					<option value="3">3 Japanese</option>
					<option value="4">4 Mandarin</option>
					<option value="5">5 French</option>
				</select><br> <br> <br> <label for="rating">Rating: </label> <select
					name="rating" value="<%=passedRating%>">
					<option value="G">G</option>
					<option value="PG">PG</option>
					<option value="R">R</option>
					<option value="NC17">NC17</option>
				</select> <br> <input type="submit" value="Update" />

			</form>


			<%--       	<form action="updatefilm.do" method="POST">

      		<label for="filmId"><strong>Editing Film ID:
      				${film.id }</strong> </label> <input type="text"
      			name="filmId"> <label for="title">Title: </label> <input
      			type="text" name="title"><br> <label for="description">Description:
      		</label> <input type="text" name="description"> <label
      			for="releaseYear">Release Year: </label> <input type="text"
      			name="releaseYear"> <br> <label for="languageID">Language
      			ID: </label> <select name="languageID" id="languageID">
      			<option value="1">1 English</option>
      			<option value="2">2 Italian</option>
      			<option value="3">3 Japanese</option>
      			<option value="4">4 Mandarin</option>
      			<option value="5">5 French</option>
      		</select> <label for="rating">Rating: </label> <select
      			name="rating">
      			<option value="G">G</option>
      			<option value="PG">PG</option>
      			<option value="R">R</option>
      			<option value="NC17">NC17</option>
      		</select> <br> <input type="submit" value="Submit Changes" />

      	</form> --%>


			<div id="navigationLocation">

				<nav class="navbar navbar-expand-lg navbar-light" id="navDesign">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">

							<li class="nav-item acticve"><a class="nav-link"
								href="filmbykey.jsp">Keyword Search</a></li>
							<li class="nav-item"><a class="nav-link" href="filmbyid.jsp">ID
									Search</a></li>
							<li class="nav-item"><a class="nav-link"
								href="createfilm.jsp">Add Film</a></li>

							<li class="nav-item"><a class="nav-link"
								href="deletefilm.jsp">Delete Film</a></li>

						</ul>
					</div>
				</nav>
			</div>

		</div>
	</div>

</body>
</html>