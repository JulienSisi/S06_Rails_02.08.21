# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

(1..10).each do |i|
  rand_age = rand(15..50)
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: rand_age)
end

(1..10).each do |i|
  user = User.all.sample
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

(1..20).each do |i|
  user = User.all.sample
  gossip = Gossip.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4), user_id: user.id)
end