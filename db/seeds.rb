# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do
  title = Faker::DragonBall.character
  manu = Faker::Company.name
  model = Faker::Name.last_name
  price = rand(50000).to_f
  rating = Faker::Ancient.god
  Bed.create(title: title, manu: manu, model: model, price: price, rating: rating)
end
