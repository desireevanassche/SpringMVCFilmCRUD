<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Spectral:wght@200&display=swap" rel="stylesheet">

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />

</head>

<body>

	<div class="row no-gutters">
		<div class="col" id="homeGrid">
			<a data-flickr-embed="true"
				href="https://www.flickr.com/photos/195450042@N08/51993560184/in/dateposted-public/"
				title="cinema"><img
				src="https://live.staticflickr.com/65535/51993560184_a17cb2acb3_c.jpg"
				width="700" height="800" alt="cinema"></a>
			<script async src="//embedr.flickr.com/assets/client-code.js"
				charset="utf-8"></script>
		</div>
		<div class="col" id="menu">
		
			<div id="row1">
				<a href="filmbyid.jsp">Find Film By ID</a>
			</div>
			<div id="row2">
				<a href="filmbykey.jsp">Find Film By Keyword</a>
			</div>
			<div id="row3">
				<a href="createfilm.jsp">Create a New Film</a>
			</div>
			<div id="row4">
				<a href="updatefilm.jsp">Update a Film</a>
			</div>
			
			<a href="home.jsp">Back To Main Menu</a>
	
			

		</div>
	</div>
	</div>
	</div>




</body>
</html>