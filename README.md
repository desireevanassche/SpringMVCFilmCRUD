# SpringMVCFilmCRUD

### Description

SpringMVCFilmCRUD is a web app which prompts the user to choose from a menu option including:

1. Find Film By ID
2. Find Film By Keyword
3. Create a New Film

If user chooses "Find Film By ID", then a new page will open and prompt the user to enter a Film's ID, and click on "Get Film Data" submit button. This will open another page and user can see the details of the film in the new web page. If the film is not found, they see the message "No film found!" in the new web page.

If user chooses "Find film by keyword" then a new page will open and prompt the user to enter a search keyword, and click on "Get Film Data" submit button. This will open another page and user can see the details of the film in the new web page. If the film is not found, they see the message "No film found!" in the new web page.

User can choose to add a new film by choosing "Create a New Film" in the option menu. In a new page, they can enter the properties of the film including "Title", "Description", "Release Year", "Language" and "Rating". User's input will be used to create a new Film object. Clicking on "Add Film" submit button will open another page and user can see the details of the film they created in the new web page.

When a user retrieves a film, they have the option of editing (by clicking on "Edit Film Data") or deleting it (by clicking on "Delete Film") submit buttons. If they choose to delete the film, it is removed from the database and a new page will open displaying the message "Film Successfully Deleted!". If the delete fails (such as, due to child records), a new page will open with the message "Delete Failed! Please try again.".
