# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
User.create!(name:  "JodyA",
             email: "a@gmail.com",
             password:              "asdfasdf",
             password_confirmation: "asdfasdf",
             admin: true)
             
User.create!(name:  "Connor",
             email: "c@gmail.com",
             password:              "asdfasdf",
             password_confirmation: "asdfasdf",
             admin: true)             

  99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "asdfasdf"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
=end
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
