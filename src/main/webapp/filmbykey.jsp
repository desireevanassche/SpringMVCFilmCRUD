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
		<img id="keyPhoto" src=https://images.pexels.com/photos/6661040/pexels-photo-6661040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1>
		</div>
		
		<div class="col" id="menu">
		<p id="keyHead">Find Film By Keyword</p>
			<form action="filmbykey.do" method="GET">
				<input type="text" name="keyword" placeholder="Please Enter Keyword" /> <input type="submit"
					value="Get Film Data" />
			</form>
			
			<br>
			<br>s
			
		</div>
	</div>
	</div>
	</div>
					

</body>
</html>