# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  email = "foo#{n + 1}@bar.com"
  password = 'foobar'
  User.create(email: email, password: password)
end

5.times do |n|
  email = Faker::Name.name
  username = "foo#{n + 1}"
  User.create!(name: name,
               username: username)
end
