puts "seeding users"
User.create(
    {
        user_name: "admin",
        email: "admin@bookameal.com",
        password: "admin123",
        user_type: 1
    })

   User.create( {
        user_name: "Carlton",
        email: "carlton.mbaja@student.moringaschool.com",
        password: "123",
        user_type: 0
    })
    User.create({
        user_name: "Vera Kwamboks",
        email: "vera.kwamboks@student.moringaschool.com",
        password: "123",
        user_type: 0
    })
    User.create({
        user_name: "James Omenda",
        email: "james.omenda@student.moringaschool.com",
        password: "123",
        user_type: 0
    })
    User.create({
        user_name: "Ivy Rono",
        email: "ivy.rono@student.moringaschool.com",
        password: "123",
        user_type: 0
    })

puts "seeding menuitem"

MenuItem.create({price: 150, name: "Spanish Omlette", image_url: "https://thatspicychick.com/wp-content/uploads/2021/01/Tortilla-Espanola-front-view-on-plate-with-sliced-wedge.jpg",  description: "Contains two eggs served with tea, milk, coffee and chocolate", on_menu:true, category_id:25, user_type:1})

MenuItem.create({name: "Mandazi", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS4Mq3tq23EYhZN6OT8rIeoMTzTXLGIX7qVv9orXNhYpjmwKDS72vocJnPlcdUBapY6vQ&usqp=CAU", description: "Two mandazis served with tea, milk, coffee and chocolate", on_menu:true, category_id:25, user_type:1})

MenuItem.create(name: "Fried eggs", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WdthD2AmtRc3m6updaLAQW5TV9vl1bRl7g&usqp=CAU", description: "Two fried eggs served with tea, milk, coffee and chocolate", on_menu:true, category_id:25, user_type:1)

MenuItem.create(name: "Beef and rice", price: 400, image_url: "https://thebusybaker.ca/wp-content/uploads/2018/04/easy-korean-beef-rice-bowls-fbig2.jpg", description: "Beef stew served with rice and veggies", on_menu:false, category_id:26, user_type:1)

MenuItem.create(name: "Ugali and fish", price: 450, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Fish-Fry-Ugali.jpg", description: "fried fish served with ugali and greens", on_menu:true, category_id:26,user_type:1)

MenuItem.create(name: "Beef pilau", price: 350, image_url: "https://image.shutterstock.com/image-photo/lamb-madghout-popular-arabic-rice-260nw-479385160.jpg", description:"Beef pilau served with kachumbari", on_menu:true, category_id:26, user_type:1)

MenuItem.create(name: "Lamp steak", price: 800, image_url:"https://www.sbs.com.au/food/sites/sbs.com.au.food/files/dmim-s1-ep-6-lamb-bean-stew-copy.jpg", description:"Lamp steak served with veggies/salad", on_menu:true, category_id:27, user_type:1)

MenuItem.create(name: "Mashed potatoes and chicken", price: 500, image_url: "https://www.recipetineats.com/wp-content/uploads/2014/12/Fast-Crumbed-Chicken-1.jpg", description: "Mashed potatoes served with fried chicken and veggies", on_menu:false, category_id:27, user_type:1)

MenuItem.create(name: "chapati and beef stew", price: 400, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Chicken-Stew-Chapati.jpg", description: "Chapati served with beef stew, chicken stew or beans stew", on_menu:true, category_id:27, user_type:1)


puts "done seeding menuitems"

puts "seeding category"

Category.create(name: "breakfast", time:6)
Category.create(name: "lunch", time:12)
Category.create(name: "dinner", time:4)

puts "done seeding category"


