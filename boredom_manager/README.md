## BOREDOM MANAGER
> Get suggestions on how to spend your time 

Feature 1: Basic user functionality
	- Users can create an account & customize their profiles 
	- Users can create their own activities and get recommended activities
	- Users can add friends
	- Users can form & join groups 
Feature 2: External interactions
	- Geolocation: user can view what others are doing at current time / can view where others are located
	- Users can rate activities created by others and add reviews to activities
	- Users can upload pictures either on the website or integrate with their social media accounts and share from there


## To do

1. create button to homepage (header)
1. hyperlink activities? 
1. add username to profiles
1. add dummy users & activities to seed file 
1. flash successful saving of location

1. misc
  - before_action :authenticate_trainer!
  - what was the point of @trainer = Trainer.find(params[:id])? 
  - what is the arrow in rails? ; what is the @ symbol ding?

1. front end styling - Bootstrap framework? / where to include css
1. for each unique activity page have option to upload pictures: see paperclip gem (https://www.youtube.com/watch?v=Z5W-Y3aROVE) 


### Links

1. https://stackoverflow.com/questions/804961/how-do-i-use-css-with-a-ruby-on-rails-application 
1. https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template

---

`Feature 1: Basic user functionality`
> Users can create a profile, login, create activities, add friends, get recommended activities

1. Users Controller 
	- geolocation: what are others located / what are others doing rn? 

1. Users Model
    - first_name 
    - last_name
    - location

1. Activities Controller
1. Activities Model
1. Friendships Controller
1. Friendships Model

`Feature 2: External Interactions`

> Users can rate activities, add reviews, upload pictures, share on their social media accounts

1. Ratings Controller
1. Ratings Model
1. Reviews Model 
1. Reviews Controller
1. Upload / share? 

--- 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
