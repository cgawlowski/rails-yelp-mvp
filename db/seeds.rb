# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Restaurant.create(name: "Restaurant A", address: "Adresse A", phone_number: "123", category: "chinese")
  Restaurant.create(name: "Restaurant B", address: "Adresse B", phone_number: "456", category: "italian")
  Restaurant.create(name: "Restaurant C", address: "Adresse C", phone_number: "789", category: "japanese")
  Restaurant.create(name: "Restaurant D", address: "Adresse D", phone_number: "101112", category: "french")
  Restaurant.create(name: "Restaurant E", address: "Adresse E", phone_number: "131415", category: "belgian")

  5.times do
    restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.cell_phone,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    2.times do
      review = Review.create(
        rating: [*0..5].sample,
        content: Faker::Restaurant.review,
        restaurant: restaurant
      )
    end
  end

