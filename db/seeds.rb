# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
10.times do
  restaurants_attributes = [
  {
    name:         Faker::Restaurant.unique.name,
    address:      Faker::Address.full_address,
    category:  'chinese',
  }
]
Restaurant.create!(restaurants_attributes)
end

20.times do
  restaurants_attributes = [
  {
    name:         Faker::Restaurant.unique.name,
    address:      Faker::Address.full_address,
    category:  'french',
  }
]
Restaurant.create!(restaurants_attributes)
end

15.times do
  restaurants_attributes = [
  {
    name:         Faker::Restaurant.unique.name,
    address:      Faker::Address.full_address,
    category:  'japanese',
  }
]
Restaurant.create!(restaurants_attributes)
end

15.times do
  restaurants_attributes = [
  {
    name:         Faker::Restaurant.unique.name,
    address:      Faker::Address.full_address,
    category:  'belgian',
  }
]
Restaurant.create!(restaurants_attributes)
end

puts 'Finished!'
