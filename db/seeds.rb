# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create! do |u|
  u.username = 'pizzaman'
  u.name     = 'Pizza Man'
  u.bio      = 'I tweet while delivering pizza!'
end

200.times do |i|
  User.create! do |u|
    u.username = "username" + i.to_s
    u.name     = "Name " + i.to_s
    u.bio      = "This is a very awesome bio, yes."
  end
end