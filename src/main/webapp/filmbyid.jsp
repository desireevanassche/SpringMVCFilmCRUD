<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>
<h1>Film Site</h1>
  <h3>Find Film By ID</h3>

	<form action="filmbyid.do" method="GET">
		ID: <input type="text" name="id" /> <input type="submit"
			value="Get Film Data" />
	</form>
</body>
</html>