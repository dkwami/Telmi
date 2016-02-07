# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(firstName: "Delali",
             lastName: "Kwami",
             username: "dkwami",
             email: "delali.kwami@gmail.com", 
             password: "password", 
             password_confirmation: "password",
             birthday: "1990-03-14")
             
User.create!(firstName: "Jacob",
             lastName: "Wiser",
             username: "jwiser",
             email: "jacob.r.wiser@gmail.com", 
             password: "password", 
             password_confirmation: "password",
             birthday: "1990-06-25")

delali = User.find(1)
7.times do
  title = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(1,4))
  category = Faker::Hipster.word
  description = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(15,30))
  delali.recommendations.create!(title: title, category: category, description: description)
end

jacob = User.find(2)
7.times do
  title = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(1,4))
  category = Faker::Hipster.word
  description = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(15,30))
  jacob.recommendations.create!(title: title, category: category, description: description)
end
