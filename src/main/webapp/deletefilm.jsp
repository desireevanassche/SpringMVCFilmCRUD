<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Film</title>
</head>
<body>
	<h1>Delete a film</h1>

	<form action="deletefilm.do" method="POST">

		<label for="id">ID: </label> <input type="text" name="id">

		<input type="submit" value="delete" />

	</form>

</body>
</html>