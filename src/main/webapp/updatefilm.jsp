<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Spectral:wght@500&display=swap" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />

</head>
<body>
	<h1>Update Film</h1>

	<form action="updatefilm.do" method="POST">

		<label for="filmId"><strong>Editing Film ID:
				${film.id }</strong> </label> <label for="filmId">ID: </label> <input type="text"
			name="filmId"> <label for="title">Title: </label> <input
			type="text" name="title"> <label for="description">description:
		</label> <input type="text" name="description"> <br> <label
			for="releaseYear">Release Year: </label> <input type="text"
			name="releaseYear"> <br> <label for="languageID">Language
			ID: </label> <select name="languageID" id="languageID">
			<option value="1">1 English</option>
			<option value="2">2 Italian</option>
			<option value="3">3 Japanese</option>
			<option value="4">4 Mandarin</option>
			<option value="5">5 French</option>
		</select><br> <br> <br> <label for="rating">Rating: </label> <select
			name="rating">
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="R">R</option>
			<option value="NC17">NC17</option>
		</select> <br> <input type="submit" value="add" />

	</form>


</body>
</html>