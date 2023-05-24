# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# TODO: Write a seed to insert 100 posts in the database
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian", phone_number:"0654822485"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number:"0654822485"}
mcdo =  {name: "Mcdo", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number:"0654822485"}
chezoim =  {name: "Chezoim", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number:"0654822485"}
rital =  {name: "Rital", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number:"0654822485"}

[dishoom, pizza_east, mcdo, chezoim, rital].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
