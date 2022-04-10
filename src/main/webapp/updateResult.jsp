<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


    <% String filmId = request.getParameter("filmId");
    out.println("Film id: " + filmId); %>
    
    <% String title = request.getParameter("title");
    out.println("Title: " + title); %>
    
    <% String description = request.getParameter("description");
    out.println("Description: " + description); %>
    
    <% String releaseYear = request.getParameter("releaseYear");
    out.println("Release Year: " + releaseYear); %>
    
    <% String languageID = request.getParameter("languageID");
    out.println("Language ID: " + languageID); %>
    
    <% String rating = request.getParameter("rating");
    out.println("Rating: " + rating); %>
    
    


</body>
</html>
</html>
</html>