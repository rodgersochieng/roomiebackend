# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1= User.create(username:"Roses", password:"12345")
user2= User.create(username:"Ros", password:"12345")
user3= User.create(username:"Mose", password:"12345")
user4= User.create(username:"Moses", password:"12345")
user5= User.create(username:"Rosess", password:"12345")

Account.create(name: "rake", institution: "Jkuat", bio: "kibandaski kibandaski", gender:"male", user_id: user1.id,
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890529/farm%20apps/rake1_lwpmc7.png")
Account.create(name: "Rose",institution: "Uon", bio: "kibandaski kibandaski", gender:"female",user_id: user2.id,
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890514/farm%20apps/Molasses-Container-5kg_-Organic_28843_1_hitblm.png")
Account.create(name: "Andrew",institution: "Tuk", bio: "kibandaski kibandaski", gender:"male",user_id: user3.id,
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667836133/unbreakable-stainless-steel-thermos_hj2tgq.png")
Account.create(name: "John",institution: "Tum", bio: "kibandaski kibandaski", gender:"male",user_id: user4.id,
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890523/farm%20apps/poultry-chicken-feeder_npyvkk.png")
Account.create(name: "Sharon",institution: "Mku" , bio: "kibandaski kibandaski",gender:"female",user_id: user5.id,
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890513/farm%20apps/Pin-Type-Ear-Tags-Plain-Large-Yellow-Green-Blue-Red_Tools_23969_1-244x244_y5lpwy.jpg")