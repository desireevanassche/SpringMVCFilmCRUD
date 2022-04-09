<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
</head>
<body>
	<h1>Create a new film</h1>

	<form action="createfilm.do" method="GET">

		<label for="title">Title: </label> <input type="text" id="title">
		<br>
		<br> <label for="releaseYear">Release Year: </label> <input type="text"
			id="releaseYear"> <br>
		<br>

			<!-- <label for="languageID">language ID: </label> <input type="text" id="languageID"> <br><br>
		
		<label for="rentalDuration">rentalDuration: </label> <input type="text" id="rentalDuration"> <br><br> -->

		<label for="languageID">Language ID: </label> <select name="languageID" id="languageID">
			<option value="1">1 English</option>
			<option value="2">2 Italian</option>
			<option value="3">3 Japanese</option>
			<option value="4">4 Mandarin</option>
			<option value="5">5 French</option>
		</select><br><br> 
		
		<label for="rentalDuration">Rental Duration: </label> <select name="rentalDuration" id="rentalDuration">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
		</select><br>
		
		
		<br> --> <label for="rantalRate">Rental Rate:</label> <input type="text" name="rantalRate"> <br>
		
		
		<label for="length">Length</label> <input type="text" name="length"> <br>
		
		
		
		<label for="replacementCost">Replacement Cost</label> <input type="text" name="replacementCost"> <br>
		

		<!-- <label for="rating">Rating</label> <input type="text" id="rating"> <br><br> -->


		<label for="rating">Rating: </label> <select name="rating">
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="R">R</option>
			<option value="NC17">NC17</option>
		</select>
		<br>
	
		
		<label for="specialFeatures">Special Features</label> <input type="text" name="specialFeatures"> <br>
		<br>

		<!-- 		<label for="language">Language: </label> <input type="text" id="language">  <br><br> -->


		<label for="language">Language: </label> <select name="language">
			<option value="English">English</option>
			<option value="Italian">Italian</option>
			<option value="Japanese">Japanese</option>
			<option value="Mandarin">Mandarin</option>
			<option value="French">French</option>
		</select><br>
		<br> <input type="submit" value="Submit" />

	</form>

</body>
</html>