# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creanting 10 restaurants"

10.times do |restaurant|
  adress = Faker::Address.street_name
  resto_name= Faker::Restaurant.name
  array = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.new(name: resto_name, address: adress, category: array, phone_number:"456782098765")
  restaurant.save
end

puts "Se han creado 10 restaurants"
