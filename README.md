# Andromeda
This is a social article summary sharing application built on rails. It allows a signed-in user to upload a url to an article they'd like summarized and, if they choose to make it public, have it posted for all of their friends to see.  You can also view other friend profile pages.

The summarization happens through using the smmry api.  You send a request with specified parameters (number of sentences, include quotes, etc) and the service returns a JSON object that is then split up into the desired member variables and assigned to an Article object.  The request is done through the HTTParty gem which ended up making working with an external API much easier than I thought it would be.

![sign-in page](public/screen_capture2.png)
This is the main sign-in page for the app.  You must be signed in to use any part of the site.


![homepage](public/screen_capture1.png)
The main homepage for the app, showing the user's current friends


![index](public/screen_capture3.png)
The bottom of the homepage shows the articles that have been uploaded by either themself or their friends along with the section to add a new one.


![show-page](public/screen_capture4.png)
This is the show page for an article.  Clicking on the URL sends you to the original article.


![edit-page](public/screen_capture5.png)
This is the edit page for an article.


![user-profile-page](public/screen_capture6.png)
This is the user's profile page, showing all of their submitted articleswhether they are private or not.  When a user is signed up they are assigned a default profile picture.


![friend-profile-page](public/screen_capture7.png)
This is the friend's profile page, displaying their first and last names along with username and profile pic.
