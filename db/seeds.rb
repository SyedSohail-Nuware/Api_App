# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


prod=["Iphone","OnePlus","Oppo","Vivo","MI","Samsung","Nokia","iPhone2","iPhone3","iPhone4","iPhone5","iPhone6","iPhone7","iPhone8"]
price=[100000,54000,35000,30000,15000,45000,15000,30000,35000,40000,45000,50000,60000,70000,80000]
desc=prod

14.times do |n|
  name = prod[n]
  pr=price[n]
  d=desc[n]
  Product.create(product:name ,price:pr, desc:d)
end

