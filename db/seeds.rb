# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Equipment.destroy_all

puts "Creating equipments..."
tennis_shoes = {sport: "Tennis", equipmentname: "Tennis shoes", description: "A bit smelly", price: 100}
golf_driver =  {sport: "Golf", equipmentname: "Driver", description: "Hitting it looong", price: 300}

[tennis_shoes, golf_driver].each do |attributes|
  equipment = Equipment.create!(attributes)
  puts "Created #{equipment.equipmentname}"
end
puts "Finished!"
