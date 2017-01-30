  |  |    __|     \ \      /                                  \ \   /          |         
  |  |  \__ \      \ \ \  /     _ \    ` \     -_)     \       \ \ /     -_)    _|  (_-< 
 \__/   ____/       \_/\_/    \___/  _|_|_|  \___|  _| _|       \_/    \___|  \__|  ___/ 
                                                                                         
US Women Vets is a website created by Team Allies.  Team Allies was formed to complete their capstone project at a coding
school - CodeUp.  The website was designed to create a centralized location for Women Veterans to discuss, find nearby 
resources, and find out about events.
                                   
                                   
HTML/CSS:
Colors - Our colors were chosen on https://designschool.canva.com/blog/website-color-schemes/.  We chose this color scheme
because as the story goes, if all the branches of the military put all their colors together then it would make the color
purple.
Homepage - index.jsp, styles.css, Foundation framework, Adobe Photoshop (gradient images), a custom made logo created
using Adobe Illustrator, and styles.css to welcome the user.  Callouts were used to allow a user to learn more and have
easy access to links within the site.  Statistics section lists Veteran Affairs findings on Women Veterans, circles were
created and numbers were centered using CSS (styles.css).

Locator Page- locator.jsp, styles.css, and foundation framework (insert how map was styled-(eunice)).  Foundation tabs 
were utilized to provide a cleaner and less tedious feel for the user to gain additional resources information.

Events Page - Google Calendar - implemented to give users the ability to view events and download the calendar or event 
to his/her preferred device.  Calendar shrinks to agenda mode for smaller screens to have a better user experience. As
with the locator page, the same foundation tabs were utilized to provide information as well as for fluidity throughout
the site.

Footer - social media icons are linked to US Women Vets social groups, icons are from foundation-icons directory.

NavBar - Layout and mobile navigation menu all custom html and css with Foundation

Profile, login, and register page - the forms used here I found via Codedrops' website--it's a form called 'hoshi' (see styles.css).
It had to be modified to function the way it needed to--I solved it by modifying the height the placeholder rises as well as centering the input text.

Show page (individual post page) - all custom html and css with Foundation and also with JSTL implementation to retrieve the correct data from the database. 



JavaScript

Google Maps API - locator.jsp and geolocate.js were used to create a customized google map that allows a user to accept whether
or not they would like to be located.  If they would like to be located then a search the Veteran Affairs is rendered so
that the nearest VA facilities within a 30 mile radius is displayed with markers.  Information was also added to the 
markers so that when a user clicks on the marker, it will display the name of the location, address, and phone number.

Foundation.js - used for accessibility when needed.

Isotope JS - used for the discussion board sorting animation.  
There was a bug where it looked like the animation would try and activate twice--the solution for which is clearly labeled in styles.css

Time of Day - timeOfDay.js was utilized to create a personalized feel for the user when logged in and editing their profile page on 
create.jsp. Based on the time of day, it will render Good Morning/Afternoon/Evening, (username)!

Hover JS - custom hover effects from Ian Lunn called .hvr-grow


Java


 



MySQL




Other

Partials Directory - utilized to minimize redundancies in code and links by creating a jsp for the footer, head, 
javascript, and navbar.






Anticipated Features:
  - list out the results of the custom made google map
  - directions to the results with user interaction
  - upvote/downvote capabilities on user posts and/or comments