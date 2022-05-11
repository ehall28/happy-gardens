# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

user = User.create(
    first_name: 'elise',
    last_name: 'hall',
    address: '',
    phone_number: '',
    email: 'test@rails.com',
    password: 'test123'
)

puts "Users: #{User.count}"
