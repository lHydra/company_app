# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do |n|
  Company.create(name: "SomeCompany#{n}", country_code: Faker::Address.country_code)
end

person_count = rand(2..10)

person_count.times do |n|
  x = rand(1..50)
  Company.find(x).people.create(first_name: Faker::Name.name, last_name: "SomeLastName#{n}")
end
