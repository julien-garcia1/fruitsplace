# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creation'

farmer1 = User.create!(email:'bob@gmail.com', password:'DEZDFZfzer')
farmer2 = User.create!(email:'boby@gmail.com', password:'DEZDfzeZfzer')
user1 = User.create!(email:'boba@gmail.com', password:'DEZhthtyZfzer')
user2 = User.create!(email:'bobu@gmail.com', password:'DEhtyFZfzer')
product1 = Product.create!(farmer: farmer1, name:'caprice des dieux', category:'fromage', price:'200')
product2 = Product.create!(farmer: farmer2, name:'concombre', category:'legumes', price: 200)
product3 = Product.create!(farmer: farmer1, name:'pastèque', category:'fruits', price: 300)
product4 = Product.create!(farmer: farmer2, name:'fraise', category:'fruits', price: 100)
product5 = Product.create!(farmer: farmer1, name:'saucisson', category:'viande', price: 30)
product6 = Product.create!(farmer: farmer2, name:'olives', category:'épicerie', price: 60)

order1 = Order.create!(product: product1, user: user1, price: 23, total: 432, quantity: 23, status:'à payer')
order2 = Order.create!(product: product4, user: user2, price: 43, total: 454, quantity: 43, status:'payé')

puts'Seeds done'
