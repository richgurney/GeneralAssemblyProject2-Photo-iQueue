
# Richard Gurney - GA Project 2

---

## My Brief


### Technical Requirements

Your app must:

* **Have at _least_ 2 models** (more if they make sense) – one representing someone using your application, and one that represents the main functional idea for your app
* **Include sign up/log in functionality**, with encrypted passwords & an authorization flow
* **Have complete RESTful routes** for at least one of your resources with GET, POST, PUT, PATCH, and DELETE
* **Utilize an ORM to create a database table structure** and interact with your relationally-stored data
* **Include wireframes** that you designed during the planning process
* Have **semantically clean HTML and CSS**
* **Be deployed online** and accessible to the public

---

### Necessary Deliverables

* A **working full-stack application, built by you**, hosted somewhere on the internet
* A **link to your hosted working app** in the URL section of your Github repo
* A **git repository hosted on Github**, with a link to your hosted project,  and frequent commits dating back to the **very beginning** of the project. Commit early, commit often.
* **A ``readme.md`` file** with explanations of the technologies used, the approach taken, installation instructions, unsolved problems, etc.
* **Wireframes of your app**, hosted somewhere & linked in your readme
* A link in your ``readme.md`` to the publically-accessible **user stories you created**
## Description

###GitHub -  <a href="https://github.com/richgurney/project2">https://github.com/richgurney/project2</a>
###Beta Site - <a href="https://stormy-garden-8334.herokuapp.com/">https://stormy-garden-8334.herokuapp.com/</a>


This is a photo storage app that you can sign up to that will allow you to store your favourites photos on a cloud with details of where the photos were took including location maps and technical details. You get the chance to allow your photos to be public so even if people are not logged in they can see the photos you choose. The app is split into photos and albums, the photos can be view as a whole or by album.


##Techniques Used
* Javascript
* HTML
* Ruby
* Active Record
* Rails
* SCSS
* JQuery
* JQuery - Animate
* Google Fonts
* Foundation
* Gems Used:-

gem 'devise'
gem 'foundation-rails'
gem 'carrierwave', '0.10.0'
gem 'rmagick'
gem 'fog', '1.29.0'
gem 'net-ssh'
gem 'geocoder'
gem 'gon'

##Approach Taken

Agile was my choice of planning for this project. I started out drawing out my fireframes on paper you can see these in the planning directory at <a href="https://github.com/richgurney/project2">https://github.com/richgurney/project2</a>. These really gave me a clear picture of where I was going with the production. I then spent some time writting my user stories, I used Pivotal Tracker to organise these. This made me really slow down and face one task at a time and not get distracted. A pivotal tracker is in the planning directory at <a href="https://github.com/richgurney/project2">https://github.com/richgurney/project2</a>.

I constructed this app with three models, user, photo and album. There were two 1-Many relationships and these were linked through each other. 

The main arm of the app was the ability to upload photos from the users computer to the cloud. I used the Amazon Web Server combined with the Gems carrierwave and fog. This was the coolest part of the project as it adds a really realistic dimension to the function of the project. Preparing for this part of the app I created a stand alone app to test how it worked. This was a good exercise as I got all the mistakes out the way before I implimented it.

Devise was my choice of gem to set up the login and signup functionality. This is a really powerful system that creates all the hard functionality for you.

The photo and album models both using the Seven RestFul routes. I made use of resources that set up all my routes and I kept to all the standard routing. GET, POST, PUT, PATCH, and DELETE.

I used ActiveRecord helpers throughout my project to access the information in my database. This was a really helpful but a little confusing at times. Once I got the hang of it I came to enjoy the simplicity.

I made my site responosve to different size of device, this was the first time I had implemented this into a full-stackproject. There were challneges along the way but with a combination of help from Foundation and some hand written media queries it thught it was a good a good first attempt.



##Things That I didnt get done and future changes

The main thing I would like to change for the future would be to map all the locations of the photos taken by a user. One big map with everything on. 

One thing that I didnt get done was the interaction with the photos that a logged out user can have. I had planned for the user t be able to like the photos but I just ran out of time to add further additions.

A really idea for the future would be to give the user choice to sell prints through the site with a payment system. 





