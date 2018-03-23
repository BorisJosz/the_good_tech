# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user = User.new
user.email = 'tasasasdast@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.remote_photo_url = "https://picsum.photos/200/300/?random"
user.name = "Billy Bob"
user.save!
Review.destroy_all
Booking.destroy_all
Item.destroy_all

user  = User.all.sample
Item.create!(
  { owner: user,
    title: "Macbook Retina",
    category: "computers",
    description: "good condition, lots of hard drive space available! (great screen)",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://cnet1.cbsistatic.com/img/XR0J6GluxRic39usA-LQ3iYdqJI=/830x467/2012/06/12/ea70daa9-0541-11e3-bf02-d4ae52e62bcc/Macbook_Pro_2012_with_Retina_Display_35331572_05.jpg"
})


user2  = User.all.sample
Item.create!(
  { owner: user2,
    title: "Dell 250gb",
    category: "computers",
    description: "250gb hard drive, 2gb ram, intel i7 2,2GHz",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://assets.pcmag.com/media/images/499245-dell-inspiron-small-desktop-pc.jpg?thumb=y&width=810&height=456"
})

user3  = User.all.sample
Item.create!(
  { owner: user3,
    title: "Dell portable computer",
    category: "computers",
    description: "No problems with Office suite",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://images.techhive.com/images/article/2015/08/07-dell-1-100607123-orig.jpg"
})

user4  = User.all.sample
Item.create!(
  { owner: user4,
    title: "Acer GAMING PC!",
    category: "computers",
    description: "1TB hard drive with 4gb of ram and beautiful display! For all your gaming needs",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://img.purch.com/o/aHR0cHM6Ly93d3cubGFwdG9wbWFnLmNvbS9pbWFnZXMvdXBsb2Fkcy80MzQ5L2cvYWNlci1hc3BpcmUtdjE1LW5pdHJvLW53LWcwMS5qcGc="
})

user5  = User.all.sample
Item.create!(
  { owner: user5,
    title: "iMac, good condition",
    category: "computers",
    description: "professional, beautiful computer to be used for performance or decoration",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://www.imore.com/sites/imore.com/files/styles/xlarge_wm_brw/public/field/image/2017/06/imac-2017-display.jpg?itok=xnL4aIMj"
})

user6  = User.all.sample
Item.create!(
  { owner: user6,
    title: "Macbook Air Brand NEW!",
    category: "computers",
    description: "this computer so light, you won't remember you're carrying it!",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://cnet2.cbsistatic.com/img/iXxss99B0PZw39Vybe39YEBmcNs=/830x467/2017/08/14/ec0fa893-faf2-46c3-8933-6898773804ba/apple-macbook-air-2017-05.jpg"
})

user7  = User.all.sample
Item.create!(
  { owner: user7,
    title: "RAZER gaming pc!",
    category: "computers",
    description: "The pinnacle of computer technology put together to deliver the ultimate gaming experience!",
    price_per_day: Faker::Number.number(2).to_i,
    address: Faker::Address.street_address,
    remote_photo_url: "https://d1urewwzb2qwii.cloudfront.net/sys-master/root/h99/h0d/8898920480798/The-New-Razer-Blade-Touch-Screen-Gaming-Laptop.jpg"
})




