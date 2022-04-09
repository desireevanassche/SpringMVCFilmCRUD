<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Spectral:wght@500&display=swap" rel="stylesheet">

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<h1>Film Site</h1>
	<h3>Find Film By ID</h3>
	<div class="row no-gutters">
		<div class="col" id="homeGrid">
			<form action="filmbyid.do" method="GET">
				ID: <input type="text" name="id" /> <input type="submit"
					value="Get Film Data" />
			</form>
		</div>
		<div class="col" id="menu">
			<img id="reel"
				src=https://images.pexels.com/photos/7319158/pexels-photo-7319158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1>
		</div>
		<br>
</body>
</html>