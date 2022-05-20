# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Listing.destroy_all
Transaction.destroy_all

# Admin
admin = User.create(
    first_name: 'elise',
    last_name: 'hall',
    address: '',
    phone_number: '',
    email: 'admin@a',
    password: 'test123'
)
admin.add_role :admin

# User 1
tim = User.create(
    first_name: 'tim',
    last_name: 'waldron',
    address: '',
    phone_number: '',
    email: 'tim@a',
    password: 'test123'
)
tim.add_role :user

random = Random.new

# User 1 Listings
5.times do |index|
    tim.listings.create(
        name: "Fuschia ##{index + 1}",
        description: 'Planty mcplanty plant plant',
        price: random.rand(20..100)
    )
end

# User 2
elise = User.create(
    first_name: 'elise',
    last_name: 'hall',
    address: '',
    phone_number: '',
    email: 'elise@a',
    password: 'test123'
)
elise.add_role :user
# User 1 Listings
5.times do |index|
    elise.listings.create(
        name: "Frangapannie ##{index + 1}",
        description: 'Planty mcplanty plant plant',
        price: random.rand(20..100)
    )
end

# Transaction
listing_id = elise.listings.sample.id
transaction = Transaction.create(
    buyer_id: tim.id,
    seller_id: elise.id,
    listing_id: listing_id
)
sold_listing = Listing.find(listing_id)
sold_listing.status = 'sold'
sold_listing.save!

puts "Users.........: #{User.count}"
puts "Listings......: #{Listing.count}"
puts "Transactions..: #{Transaction.count}"
