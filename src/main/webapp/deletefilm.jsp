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

		 <nav class="navbar navbar-expand-lg navbar-light" id="navDesign">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
       
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
          <a class="nav-link" href="updatefilm.jsp">Edit Film</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="deletefilm.jsp">Delete Film</a>
        </li>
     
      </ul>
    </div>
  </nav>
</body>
</html>