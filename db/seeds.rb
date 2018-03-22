# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
 user  = User.all.sample
 p "is it me you looking for"
Item.create!(
  { owner: user,
    category: "cameras",
    description: Faker::Lorem.sentence(3),
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://picsum.photos/200/300/?random"
    })
end

10.times do
 user  = User.all.sample
 p "i can see it in your eyes"
Item.create!(
  { owner: user,
    category: "drones",
    description: Faker::Lorem.sentence(3),
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://picsum.photos/200/300/?random"
    })
end
