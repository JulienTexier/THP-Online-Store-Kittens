# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

20.times do 
  Item.create(title: Faker::Book.title, description: Faker::Movie.quote, price: Faker::Number.decimal(l_digits: 2), image_url: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "bmp", set: "set4"))
end