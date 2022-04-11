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

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />

</head>
<body>

<div class="row no-gutters">
		<div class="col" id="idimageleft">
		<img id="idPhoto" img src="https://live.staticflickr.com/65535/51992538777_81f4787808_z.jpg" width="640" height="640" alt="movie_theater">
		</div>
		
		<div class="col" id="searchId">
		<p id="idHead">Find Film By ID</p>
		
		<c:choose>
		<c:when test="${! empty film}">
			<ul id="updatedFilmResult">
				<h3>Film updated:</h3>
				<li>Title: ${film.title}</li>
				<li>Description: ${film.description}</li>
				<li>Release Year: ${film.releaseYear}</li>
				
			</ul>
		</c:when>

		<c:otherwise>
			<p>No film updated</p>
		</c:otherwise>

	</c:choose>
			
			<div class="updatenav" id="s">
			 <nav class="navbar navbar-expand-lg navbar-light" id="navDesign">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
       
        <li class="nav-item acticve">
          <a class="nav-link" href=${pageContext.request.contextPath}>Home</a>
        </li>
        <li class="nav-item acticve">
          <a class="nav-link" href="filmbykey.jsp">Keyword Search</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="filmbyid.jsp">ID Search</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="createfilm.jsp">Add Film</a>
        </li>
            <li class="nav-item">
          <a class="nav-link" href="deletefilm.jsp">Delete Film</a>
        </li>
     
      </ul>
    </div>
  </nav>
			</div>
			
		</div>
	</div>
	</div>
	</div>
	
	
	 
	


</body>
</html>