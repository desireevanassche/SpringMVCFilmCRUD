## SpringMVCFilmCRUD

### Description

SpringMVCFilmCRUD is a web app which prompts the user to choose from a menu option including:

1. Find Film By ID
2. Find Film By Keyword
3. Create a New Film

If user chooses "Find Film By ID", then a new page will open and prompt the user to enter a Film's ID, and click on "Get Film Data" submit button. This will open another page and user can see the details of the film, including "Film ID", "Title", "Description", "Release Year", "Rating", "Language" and "Cast" of the film in the new web page. If the film is not found, they see the message "No film found!" in the new web page.

If user chooses "Find film by keyword", then a new page will open and prompt the user to enter a search keyword, and click on "Get Film Data" submit button. This will open another page and user can see the details of the film, including "Film ID", "Title", "Description", "Release Year", "Rating", "Language" and "Cast" of the film in the new web page. If the film is not found, they see the message "No film found!" in the new web page.

If user chooses "Create a New Film", they can add a new film to the list. This option opens a new page and they can enter the properties of their own film including "Title", "Description", "Release Year", "Language" and "Rating". User's input will be used to create a new Film object. Clicking on "Add Film" submit button will open another page and user can see the details of the film they created in the new web page.

At the result page of all three selections, the user have the options of editing (by clicking on "Edit Film Data") or deleting the film (by clicking on "Delete Film") submit buttons.
If they choose to edit film data then a new page will open and all the film's current properties are displayed in a form, allowing them to change any property except the film's ID. When they submit the form, that film's record is updated in the database and a new page will display the message "Film updated" and all the updated properties.
If the user choose to delete the film, it is removed from the database and a new page will open displaying the message "Film Successfully Deleted!". If the delete fails (such as, due to child records), a new page will open with the message "Delete Failed! Please try again.".

### Lesson Learned

This project helped us understand more about Controllers (relational mapping/the data pattern itself) actually pass/receive data from the form actions and how that data ultimately is presented in the View.
Concepts where we've done lots of examples went fine though like JDBC (created the connection, Prepared Statement, and Exception Handling).
We learned how the CRUD methods are made. We learned more about syntax early on, and understood how the ModelAndView worked in concept. We learned how to add the Objects to the MV instance correctly.
Our examples thus far were "@RequestParam" examples where we took things like "keyword" as a String directly from the form just to GET/query to database. So when we had to 'create/post' stuff it took us a good while to let the Controller only worry about the ModelAndView and forward the form field to object work to the JDBCImpl.


### Technology Used

1. MySQL Database for Objects (films and actors)
2. DAO (Connectivity, Prepared Statements, Exception Handling)
3. CRUD (in the PS)
4. HTML/CSS (Bootstrap)
5. Spring (JSP, XML config, etc.)
