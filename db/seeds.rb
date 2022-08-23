# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


prod=["Clean code","Clean Architecture","Clean code in Python","Practcal API Design","Docker Demystified","Introduction to data science","Java professional guide","Ruby devolepers guide","Design pattrens"]
price=[300,500,300,300,500,400,1500,300,300]
# desc=prod
imgage = ['clean code.jpg',"clean architecture.jpg",'clean code in python.png','Practcal api design.png','Docker Demystified.webp','introduction to data science.png','Java professional guide.png','Ruby devolepers guide.png','Design pattrens.jpg']

9.times do |n|
  name = prod[n]
  pr=price[n]
  d= 'Book House'
  img = imgage[n]
  Product.create(product:name ,price:pr, desc:d,image:img)
end

