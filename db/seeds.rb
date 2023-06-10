# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning database..."
Equipment.destroy_all
User.destroy_all

puts "Creating users & equipment..."

# Create 20 equipment records with associated user
20.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    about: Faker::Lorem.sentence,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%Y-%m-%d')
  )

  equipment = Equipment.create!(
    sport: Faker::Sport.sport,
    equipmentname: Faker::Appliance.equipment,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price(range: 10..100),
    user: user
  )
end



# [tennis_shoes, golf_driver].each do |attributes|
#   equipment = Equipment.create!(attributes)
#   puts "Created #{equipment.equipmentname}"
# end

puts "Finished!"
