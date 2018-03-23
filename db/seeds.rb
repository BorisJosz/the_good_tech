# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
user = User.new
user.email = 'test@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.remote_photo_url = "https://picsum.photos/200/300/?random"
user.name = "Billy Bob"
user.save!
Item.destroy_all
10.times do
 user  = User.all.sample
Item.create!(
  { owner: user,
    title: Faker::Dog.breed,
    category: "cameras",
    description: Faker::Lorem.sentence(3),
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://picsum.photos/200/300/?random"
    })
end

10.times do
 user  = User.all.sample
Item.create!(
  { owner: user,
    title: Faker::Dog.breed,
    category: "drones",
    description: Faker::Lorem.sentence(3),
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://picsum.photos/200/300/?random"
    })
end

10.times do
 user  = User.all.sample
Item.create!(
  { owner: user,
    title: Faker::Dog.breed,
    category: "televisions",
    description: Faker::Lorem.sentence(3),
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://picsum.photos/200/300/?random"
    })
end
