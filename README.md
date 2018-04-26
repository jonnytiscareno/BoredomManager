## [BOREDOM MANAGER](https://boredom-manager.herokuapp.com/)
> Get suggestions on how to spend your time 
> 
> https://boredom-manager.herokuapp.com/ 

`Feature 1: Basic user functionality`

	- [x] Users can create an account & customize their profiles 
	- [x] Users can create their own activities and get recommended activities
	- [x] Users can rate and review activities

`Feature 2: External interactions`

	- [x] Geolocation: user can view others nearby and connect with them
	- [x] Users can share to social media
	- [x] Users can upload pictures

## Gems

1. Geocoder: to see nearby friends
1. Devise: creat users
1. Paperclip: image uploading

## Relationships

1. User has_many Activities; activity has_many users
1. Activity has_many reviews; Review belongs_to activity
1. User has_a location; location belongs_to user

## Models:

1. Activity
1. User
1. Review
1. Location

---

## To do

1. deploy to heroku
	- difference between `heroku local`  & `rails server`
	- free tier enough for what? 
	- https://devcenter.heroku.com/articles/getting-started-with-ruby#define-a-procfile
	- `heroku run rails db:migrate`
1. hyperlink activities? 
1. put account on the right side
1. fix social media share bar  
1. add username to profiles
1. populate seed file to include additional activities & categories in proper format
1. flash error not showing up? 

1. misc
  - before_action :authenticate_trainer!
  - what was the point of @trainer = Trainer.find(params[:id])? 
  - what is the arrow in rails? 

1. front end styling - Bootstrap framework? / where to include css
	- https://stackoverflow.com/questions/804961/how-do-i-use-css-with-a-ruby-on-rails-application  
1. for each unique activity page have option to upload pictures: see paperclip gem (https://www.youtube.com/watch?v=Z5W-Y3aROVE) 


### Links
1. https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template

