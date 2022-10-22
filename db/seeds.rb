# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.
puts "seeding menuitem"

MenuItem.create(name: "Spanish Omlette", price: 150, image_url: "https://thatspicychick.com/wp-content/uploads/2021/01/Tortilla-Espanola-front-view-on-plate-with-sliced-wedge.jpg", description: "Contains two eggs served with tea, milk, coffee and chocolate", category: "breakfast")
MenuItem.create(name: "Mandazi", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS4Mq3tq23EYhZN6OT8rIeoMTzTXLGIX7qVv9orXNhYpjmwKDS72vocJnPlcdUBapY6vQ&usqp=CAU", description: "Two mandazis served with tea, milk, coffee and chocolate", category:"breakfast")
MenuItem.create(name: "Fried eggs", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WdthD2AmtRc3m6updaLAQW5TV9vl1bRl7g&usqp=CAU", description: "Two fried eggs served with tea, milk, coffee and chocolate",category: "breakfast")
MenuItem.create(name: "Beef and rice", price: 400, image_url: "https://thebusybaker.ca/wp-content/uploads/2018/04/easy-korean-beef-rice-bowls-fbig2.jpg", description: "Beef stew served with rice and veggies", category: "lunch")
MenuItem.create(name: "Ugali and fish", price: 450, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Fish-Fry-Ugali.jpg", description: "fried fish served with ugali and greens", category: "lunch")
MenuItem.create(name: "Beef pilau", price: 350, image_url: "https://image.shutterstock.com/image-photo/lamb-madghout-popular-arabic-rice-260nw-479385160.jpg", description:"Beef pilau served with kachumbari",category:"lunch")
MenuItem.create(name: "Lamp steak", price: 800, image_url:"https://www.sbs.com.au/food/sites/sbs.com.au.food/files/dmim-s1-ep-6-lamb-bean-stew-copy.jpg", description:"Lamp steak served with veggies/salad",category:"dinner")
MenuItem.create(name: "Mashed potatoes and chicken", price: 500, image_url: "https://www.recipetineats.com/wp-content/uploads/2014/12/Fast-Crumbed-Chicken-1.jpg", description: "Mashed potatoes served with fried chicken and veggies", category: "dinner")
MenuItem.create(name: "chapati and beef stew", price: 400, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Chicken-Stew-Chapati.jpg", description: "Chapati served with beef stew, chicken stew or beans stew", category: "dinner")

puts "done seeding menuitems"

puts "seeding menu"

Menu.create(menu_items_id:1)
Menu.create(menu_items_id:2)
Menu.create(menu_items_id:3)
Menu.create(menu_items_id:4)
Menu.create(menu_items_id:5)
Menu.create(menu_items_id:6)
Menu.create(menu_items_id:7)
Menu.create(menu_items_id:8)
Menu.create(menu_items_id:9)

puts "done seeding menu"


