# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '235454523243',  category: 'japanese' }

pizza_hut = { name: 'Pizza Hut', address: '57A Shoreditch High St, London E1 6PQ', phone_number: '234234234234324', category: 'italian' }

pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '2342234234324', category: 'italian' }

hotdogs =  {name: 'Hotdogs', address: '59A Shoreditch High St, London E1 6PQ', phone_number: '23134234234324', category: 'italian'}

pancakes =  {name: 'Pancakes', address: '50A Shoreditch High St, London E1 6PQ', phone_number: '2342342342384', category: 'japanese'}

[dishoom, pizza_east, pizza_hut, hotdogs, pancakes].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
