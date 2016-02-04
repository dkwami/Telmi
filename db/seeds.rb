# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

delali = User.find(15)
7.times do
  title = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(1,4))
  category = Faker::Hipster.word
  description = Faker::Hipster.sentence(Faker::Hipster.rand_in_range(15,30))
  delali.recommendations.create!(title: title, category: category, description: description)
end
