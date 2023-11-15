# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "078678544", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "078678544", category: "french"}
dominos = {name: "Dominos", address: "Amsterdam", phone_number: "078678544", category: "french"}
mcdonalds =  {name: "McDonalds", address: "Den Haag", phone_number: "078678544", category: "french"}
burgerking =  {name: "Burger King", address: "Zoetermeer", phone_number: "078678544", category: "french"}
chillis =  {name: "Chillis", address: "Rotterdam", phone_number: "078678544", category: "french"}

[dishoom, pizza_east, dominos, mcdonalds, burgerking, chillis].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
