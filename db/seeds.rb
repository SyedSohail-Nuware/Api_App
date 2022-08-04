# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Order.create(product: "Lays", desc:"Chips",qty:1, price:10)
Order.create(product: "KitKat", desc:"chocolate",qty:1, price:10)
Order.create(product: "Boost", desc:"Drink",qty:1, price:150)
Order.create(product: "Nescafe", desc:"Cofee",qty:1, price:100)
Order.create(product: "Pepsi", desc:"Deink",qty:1, price:20)
Order.create(product: "7up", desc:"Drink",qty:1, price:20)
Order.create(product: "Kurkure", desc:"Snacks",qty:1, price:10)
Order.create(product: "Maggi", desc:"Snacks",qty:1, price:24)
Order.create(product: "Jam", desc:"Snacks",qty:1, price:48)
Order.create(product: "Chocos", desc:"Breakfast",qty:1, price:50)
Order.create(product: "Nutella", desc:"Spread",qty:1, price:280)
Order.create(product: "Honey", desc:"Spread",qty:1, price:185)