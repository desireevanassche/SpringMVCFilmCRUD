<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
	<h1>Update Film</h1>

	<form action="updatefilm.do" method="POST">
	
		<label for="filmId"><strong>Editing Film ID: ${film.id }</strong> </label>
		
		<label for="filmId">ID: </label> <input type="text" name="filmId">
		<label for="title">Title: </label> <input type="text" name="title">
		<label for="description">description: </label> <input type="text" name="description">
		<br> 
		<label for="releaseYear">Release Year: </label> <input type="text" name="releaseYear"> <br>

		<!-- <label for="languageID">language ID: </label> <input type="text" id="languageID"> <br><br>
		
		<label for="rentalDuration">rentalDuration: </label> <input type="text" id="rentalDuration"> <br><br> -->

		<label for="languageID">Language ID: </label> 
		<select name="languageID" id="languageID">
			<option value="1">1 English</option>
			<option value="2">2 Italian</option>
			<option value="3">3 Japanese</option>
			<option value="4">4 Mandarin</option>
			<option value="5">5 French</option>
		</select><br>
		<br> 
		
		
		<!-- <label for="rentalDuration">Rental Duration: </label> <select
			name="rentalDuration" id="rentalDuration">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
		</select><br>  -->
		
		<br> 
		
	<!-- 	 <label for="rantalRate">Rental Rate:</label> <input
			type="text" name="rantalRate"> <br> <label for="length">Length</label> -->
		
		



		<!-- <label for="rating">Rating</label> <input type="text" id="rating"> <br><br> -->


		<label for="rating">Rating: </label> <select name="rating">
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="R">R</option>
			<option value="NC17">NC17</option>
		</select> <br> 
		
		
		<!-- <label for="specialFeatures">Special Features</label> <input
			type="text" name="specialFeatures"> <br> <br> -->

		<!-- 		<label for="language">Language: </label> <input type="text" id="language">  <br><br> -->


		<!-- 		<label for="language">Language: </label> <select name="language">
			<option value="English">English</option>
			<option value="Italian">Italian</option>
			<option value="Japanese">Japanese</option>
			<option value="Mandarin">Mandarin</option>
			<option value="French">French</option>
		</select><br>
		<br>  -->

		<input type="submit" value="add" />

	</form>

</body>
</html>