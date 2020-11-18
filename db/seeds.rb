# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroy data'

Order.destroy_all
Product.destroy_all
User.destroy_all



puts 'Creation'

farmer1 = User.create!(email:'bob@gmail.com', password:'DEZDFZfzer')
farmer2 = User.create!(email:'boby@gmail.com', password:'DEZDfzeZfzer')
user1 = User.create!(email:'boba@gmail.com', password:'DEZhthtyZfzer')
user2 = User.create!(email:'bobu@gmail.com', password:'DEhtyFZfzer')

puts'Seeds done'
