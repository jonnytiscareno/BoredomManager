## From scratch

1. sometimes you just need to restart your server, always run bundle install after install gem, always run rails db:migrate after creating a migration

1. rails new app_name (bundle install automatically)
1. rails g model/controller `name`
	- **naming conventions**: always pluralized unless models
1. “Rails Magic”: migrations with name of type `AddXXXXtoYYYY` or `RemoveXXXXFromYYYY` will add or remove column XXXX to/from table YYYY
	- also have to include column & type
	- even though model name is singular, the table's name is plural
	- or just create the migration and define the change method

1. Error messages:
	- must pass hash as argument (dictionary)
	- uninitialized controller means something doesn't exist (probably named something wrong)
	- undefined method `activities` for nil:NilClass, it's not that the method isn't defined but object is referring to nil

1. Debugging
	- Use the terminal window inside the error message
	- Use print statements (put command)
	- inspect element & record log

1. deploying to heroku
	- `heroku create _name_`
	- commit the file to git
	- `git push heroku master`? 
	- `heroku run rails db:migrate`

1. error: `No default language could be detected for this app`
	- `heroku buildpacks:set heroku/ruby`
	- error: `App not compatible with buildpack`
	- replace sqlite3: http://curriculum.railsbridge.org/intro-to-rails/deploying_to_heroku
		- **remove the postgres gem & replace with `gem 'pg', '~> 0.18'`** 
		- `bundle install --without production`
	- **remark** if you're not on master then you have to do: `git push heroku test_heroku:master`


## Concepts

### Models
1. model level (Pokemon)
	-  **associations**:
		- e.g. trainer has-many pokemon gives access to a trainers.Pokemons 
		- associations must happen at both models
		- database level (:pokemons)
		- belongs_to, has_one, has_many, has_many :through, has_one :through, has_and_belongs_to_many
	
	- **foreign keys:** 
		- A field in one table that uniquely identifies a row of another
		- have to be declared between both models
		- used when there exists a belongs to relatonship; an activity would have a foreign key identifying a user
		
 	- **validations:** verify certain values are passed in

1. joint associations = relational tables
	- ....
1. rails db:reset, db:seed
1. rails g migration

--- 
### Controllers

Methods: 

Index |  show
------|--------
index for all objects | show for an individual object

Variable names
	- title is a local variable. They only exists within its scope (current block)
	- @title is an instance variable - and is available to all methods within the class.

--- 
### ROUTING

1. Notes:
	- 7 default routes are resourceful routes, resource = class 
	- index, new, create, show, edit, update, destroy
	- member route: editing single resource
	- collection route: edit entire class
1. GET request from user clicking on a link is processed by the show method of UsersController, can access id from params: params[:id] = 15
	- dynamic parameters prefaced with colon

_Basic Datatypes_

- :string - small data types such as header or title
- :text - longer pieces of textual data such as paragraphs
- :integer - whole numbers
- :boolean - storing true/false values


---- 



