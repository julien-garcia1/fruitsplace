# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Destroy data'

Order.destroy_all
Product.destroy_all
User.destroy_all



puts 'Creation'

farmer1 = User.create!(email:'bob@gmail.com', password:'abcdefg')
farmer2 = User.create!(email:'boby@gmail.com', password:'abcdefg')
user1 = User.create!(email:'boba@gmail.com', password:'abcdefg')
user2 = User.create!(email:'bobu@gmail.com', password:'abcdefg')

product1 = Product.create!(name:'banane', category:'fruits', price: 3, farmer:farmer1)
product1.photo.attach(io: URI.open('https://images.unsplash.com/photo-1587132137056-bfbf0166836e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'), filename: 'banana.png')
product2 = Product.create!(name:'poire', category:'fruits', price: 2, farmer:farmer1)
product2.photo.attach(io: URI.open('https://images.unsplash.com/photo-1514756331096-242fdeb70d4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'), filename: 'pear.png')
product3 = Product.create!(name:'pêche', category:'fruits', price: 4, farmer:farmer2)
product3.photo.attach(io: URI.open('https://images.unsplash.com/photo-1570978561297-793391262fea?ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80'), filename: 'peach.png')
product4 = Product.create!(name:'fraises', category:'fruits', price: 1, farmer:farmer1)
product4.photo.attach(io: URI.open('https://images.unsplash.com/photo-1587393855524-087f83d95bc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=997&q=80'), filename: 'strawberry.png')
product5 = Product.create!(name:'courgette', category:'légumes', price: 3, farmer:farmer2)
product5.photo.attach(io: URI.open('https://images.unsplash.com/photo-1596887342565-9ab7941a7b73?ixlib=rb-1.2.1&auto=format&fit=crop&w=1904&q=80'), filename: 'zuchini.png')
product6 = Product.create!(name:'carrottes', category:'légumes', price: 5, farmer:farmer1)
product6.photo.attach(io: URI.open('https://images.unsplash.com/photo-1447175008436-054170c2e979?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2061&q=80'), filename: 'carrots.png')
product7 = Product.create!(name:'raisin', category:'fruits', price: 7, farmer:farmer2)
product7.photo.attach(io: URI.open('https://images.unsplash.com/photo-1578829779691-99b60bd8c7be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1561&q=80'), filename: 'grapes.png')
product8 = Product.create!(name:'pommes', category:'fruits', price: 2, farmer:farmer1)
product8.photo.attach(io: URI.open('https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'), filename: 'apple.png')
product9 = Product.create!(name:'salade', category:'légumes', price: 1, farmer:farmer2)
product9.photo.attach(io: URI.open('https://images.unsplash.com/photo-1556781366-336f8353ba7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'), filename: 'lettuce.png')
product10 = Product.create!(name:'lait', category:'boisson', price: 3, farmer:farmer1)
product10.photo.attach(io: URI.open('https://images.unsplash.com/photo-1587185717365-a1b43fafb42b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80'), filename: 'milk.png')
product11 = Product.create!(name:'oeufs', category:'épicerie', price: 4, farmer:farmer2)
product11.photo.attach(io: URI.open('https://images.unsplash.com/photo-1506976785307-8732e854ad03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1541&q=80'), filename: 'eggs.png')
product12 = Product.create!(name:'framboise', category:'fruits', price: 2, farmer:farmer1)
product12.photo.attach(io: URI.open('https://images.unsplash.com/photo-1577069861033-55d04cec4ef5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'), filename: 'raspberry.png')
product14 = Product.create!(name:'olives', category:'épicerie', price: 5, farmer:farmer1)
product14.photo.attach(io: URI.open('https://images.unsplash.com/photo-1572777856134-4e658bbf3b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'), filename: 'olives.png')


puts'Seeds done'
