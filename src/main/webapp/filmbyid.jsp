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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link href="homestylesheet.css" type="text/css" rel="stylesheet" />
</head>
<body>

<div class="row no-gutters">
		<div class="col" id="idimageleft">
		<img id="idPhoto" src=https://images.pexels.com/photos/7319158/pexels-photo-7319158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1>
		</div>
		
		<div class="col" id="menu">
		Find Film By ID
		<form action="filmbyid.do" method="GET">
				ID: <input type="text" name="id" /> <input type="submit"
					value="Get Film Data" />
			</form>
			
			
		</div>
	</div>
	</div>
	</div>
	
	
	

</body>
</html>