# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."

Surpriz = { name: 'Surpriz', address: 'Paris 75011', phone_number: '0610101010', category: 'french' }
Gino = { name: 'Gino', address: 'Marseille', phone_number: '0611111111', category: 'italian' }
Beijing = { name: 'Beijing', address: 'Dijon', phone_number: '0622222222', category: 'chinese' }
Tokyo = { name: 'Tokyo', address: 'Lorient', phone_number: '0633333333', category: 'japanese' }
Welsh = { name: 'Welsh', address: 'Bruxelles', phone_number: '0644444444', category: 'belgian' }

[Surpriz, Gino, Beijing, Tokyo, Welsh].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
