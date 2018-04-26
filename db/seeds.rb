# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[['Go laser tagging', 60, 'pew'], ['Give someone a compliment', 1, 'nice smile'], 
 ['plant a tree', 25, 'save the earth']].each do |name, len, descrip|
  Activity.create(
    name: name,
    length: len,
    description: descrip,
  )
	end 

%w(Dipper Mabel Soos GrunkleStan).each do |name|
  User.create(username: name, email: name+"@mysteryshack.com", password: 'password', location: 'Gravity Falls')
end


[['UC Berkeley', 1], ['Top Dog Berkeley CA', 2],
 ['Lotus House Berkeley CA', 3], ['Indian Flavors Berkeley CA', 4]].each do |adress, user|
  Location.create(
      address: adress,
      user_id: user,
      )
end
