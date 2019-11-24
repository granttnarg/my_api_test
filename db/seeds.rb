# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Comment.destroy_all
Restaurant.destroy_all
User.destroy_all


user = User.create(email:"test@testing.com", password: "testtest")
puts "user created"

otto = Restaurant.create(user: user, name: "Ottolenghi", address: "287 Upper Street, London")
rovi = Restaurant.create(user: user, name: "Rovi", address: "59 Wells st, London")
ducksoup = Restaurant.create(user: user, name: "Duck Soup", address: "41 Dean st, London")

puts "3 London Restaurants created"

gazzo = Restaurant.create(user: user, name: "Gazzo", address: "Hobrechtstraße 57, Berlin")
time_raue = Restaurant.create(user: user, name: "Time Raue", address: "Rudi-Dutschke-Straße 26, Berlin")

puts "3 London Restaurants created"

Comment.create(user: user, restaurant: otto, content: "Top knotch")
Comment.create(user: user, restaurant: gazzo, content: "Pizza Heaven")

puts "2 Comments created"
