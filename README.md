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

Agile was my choice of planning for this project. I started out drawing out my fireframes on paper you can see these in the planning directory. These really gave me a clear picture of where I was going with the production. I then spent some time writting my user stories. I used Pivotal Tracker to organise me planning. This made me really slow down and face one task at a time and not get distracted. 

I constructed this app with three models user, photo and album. There were two 1-Many relationship and these were linked through each other. My initial planning of this is also in the planning folder. 

The main arm of the app was the ability to upload photos from the users computer to the cloud. I used the Amazon Web Server combined with the Gems carrierwave and fog. This was the coolest part of the project as it add a really realistic dimension to the function of the project. Preparing for this part of the functioning I created a stand alone app to test how it worked. 

Devise was my choice of gem to set up the login and signup functionality. This is a really powerful system that creates all the hard functionality for you.

The photo and album model both using the Seven RestFul routes. I made use of resources that set up all my routes and I kept to all the standard routing. GET, POST, PUT, PATCH, and DELETE.

I used ActiveRecord helpers throughout my project to access the information in my database. This was a really powerful




##Unsolved Problems

I would of really liked to get all the crocs animated differently from the same fucntion but I had run out of time to refactor my code further.