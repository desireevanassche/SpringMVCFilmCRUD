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
		<img
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


		
	</div>
	</div>


  <nav class="navbar navbar-expand-lg navbar-light" id="navDesign">
    <a class="navbar-brand" href="#">Movie Mania </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
       
        <li class="nav-item">
          <a class="nav-link" href=${pageContext.request.contextPath}>Home</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="filmbykey.jsp">Keyword Search</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="filmbyid.jsp">ID Search</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="createfilm.jsp">Add Film</a>
        </li>

     
      </ul>
    </div>
  </nav>
</body>
</html>