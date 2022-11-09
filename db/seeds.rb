# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Faker::PhoneNumber.phone_number
# Faker::Restaurant.name
# Faker::Address.street_address
# Faker::Restaurant.review
# category: Restaurant::CATEGORY.sample
require "faker"

puts "clean the DB..."
Restaurant.destroy_all
puts "DB is clean!"

puts "creating 5 restaurants..."
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number.to_s,
    category: Restaurant::CATEGORY.sample
  )
  puts "Restaurant #{restaurant.id} was created"
end

puts "All done!"
