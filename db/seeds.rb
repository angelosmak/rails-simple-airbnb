# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all
10.times do
  flat = Flat.create!(
    name: ['Light & Spacious Garden Flat London', 'Sunny Villa in Corfu', 'Gothic appartment with view in Nuremberg',
           'Tree house in Amazon forest', 'Beach house in Sagres'].sample,
    address: Faker::Address.full_address,
    description: ['A lovely summer feel for this spacious garden flat', ' Two double bedrooms, open plan living area',
                  'large kitchen and a beautiful conservatory'].sample,
    price_per_night: rand(30..60),
    number_of_guests: rand(1..5)
  )
end
