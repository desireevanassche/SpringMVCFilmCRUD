<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Keyword Search</title>

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


		<div class="row no-gutters">
		<div class="col" id="keywordLeft">
		<img id="keyPhoto" src="https://live.staticflickr.com/65535/51994568613_7905851c92_z.jpg" alt="Movie Mania">
		</div>
		
		<div class="col" id="menu">
		<h1>Delete Failed!</h1><br>
		<h2>Please try again.</h2><br>
		
			
			</form>
			
				<div id="navigationLocation">
			
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