<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Keyword Search</title>

</head>
<body>

	<h1>Film Site</h1>
	<h3>Find Film By Keyword</h3>
	<div class="row no-gutters">
		<div class="col" id="homeGrid">
			<form action="filmbykey.do" method="GET">
				Keyword: <input type="text" name="keyword" /> <input type="submit"
					value="Get Film Data" />
			</form>
		</div>
		<div class="col" id="menu">
			<img id="reel"
				src=https://images.pexels.com/photos/6661040/pexels-photo-6661040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1>
</body>
</html>