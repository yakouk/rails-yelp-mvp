# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
dishuum = { name: 'Dishuum', address: '77 Boundary St, London E2 7JE', category: 'french' }
pizza_west = { name: 'Pizza West', address: '126 Shoreditch High St, London E1 6PQ', category: 'belgian' }
pizza_north = { name: 'Pizza North', address: '55 Shoreditch High St, London E1 6PQ', category: 'japanese' }

[dishoom, pizza_east, dishuum, pizza_west, pizza_north].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
