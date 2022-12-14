puts "seeding users"
   User.create(
    {
        user_name: "admin",
        email: "admin@bookameal.com",
        password: "admin123",
        is_admin: true
    })

   User.create( {
        user_name: "Carlton",
        email: "carlton.mbaja@student.moringaschool.com",
        password: "123",
        is_admin: false
    })
    User.create({
        user_name: "Vera Kwamboks",
        email: "vera.kwamboks@student.moringaschool.com",
        password: "123",
        is_admin: false
    })
    User.create({
        user_name: "James Omenda",
        email: "james.omenda@student.moringaschool.com",
        password: "123",
        is_admin: false
    })
    User.create({
        user_name: "Ivy Rono",
        email: "ivy.rono@student.moringaschool.com",
        password: "123",
        is_admin: false
    })

    puts "seeding category"

Category.create(name: "breakfast", time:6)
Category.create(name: "lunch", time:12)
Category.create(name: "dinner", time:4)

puts "done seeding category"


puts "seeding menuitem"

MenuItem.create({price: 150, name: "Spanish Omlette", image_url: "https://thatspicychick.com/wp-content/uploads/2021/01/Tortilla-Espanola-front-view-on-plate-with-sliced-wedge.jpg",  description: "Contains two eggs served with tea, milk, coffee and chocolate", on_menu:true, category_id:2, is_admin:true})

MenuItem.create({name: "Mandazi", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS4Mq3tq23EYhZN6OT8rIeoMTzTXLGIX7qVv9orXNhYpjmwKDS72vocJnPlcdUBapY6vQ&usqp=CAU", description: "Two mandazis served with tea, milk, coffee and chocolate", on_menu:true, category_id:2, is_admin:true})

MenuItem.create(name: "Fried eggs", price: 100, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WdthD2AmtRc3m6updaLAQW5TV9vl1bRl7g&usqp=CAU", description: "Two fried eggs served with tea, milk, coffee and chocolate", on_menu:true, category_id:2, is_admin:true)

MenuItem.create(name: "Beef and rice", price: 400, image_url: "https://thebusybaker.ca/wp-content/uploads/2018/04/easy-korean-beef-rice-bowls-fbig2.jpg", description: "Beef stew served with rice and veggies", on_menu:false, category_id:3, is_admin:true)

MenuItem.create(name: "Ugali and fish", price: 450, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Fish-Fry-Ugali.jpg", description: "fried fish served with ugali and greens", on_menu:true, category_id:3,is_admin:true)

MenuItem.create(name: "Beef pilau", price: 350, image_url: "https://image.shutterstock.com/image-photo/lamb-madghout-popular-arabic-rice-260nw-479385160.jpg", description:"Beef pilau served with kachumbari", on_menu:true, category_id:3, is_admin:true)

MenuItem.create(name: "Lamp steak", price: 800, image_url:"https://www.sbs.com.au/food/sites/sbs.com.au.food/files/dmim-s1-ep-6-lamb-bean-stew-copy.jpg", description:"Lamp steak served with veggies/salad", on_menu:true, category_id:1, is_admin:true)

MenuItem.create(name: "Mashed potatoes and chicken", price: 500, image_url: "https://www.recipetineats.com/wp-content/uploads/2014/12/Fast-Crumbed-Chicken-1.jpg", description: "Mashed potatoes served with fried chicken and veggies", on_menu:false, category_id:1, is_admin:true)

MenuItem.create(name: "chapati and beef stew", price: 400, image_url: "https://www.mostell.co.ke/wp-content/uploads/2020/07/Chicken-Stew-Chapati.jpg", description: "Chapati served with beef stew, chicken stew or beans stew", on_menu:true, category_id:1, is_admin:true)


puts "done seeding menuitems"


    puts "seeding orders"

    Order.create({
        quantity: 3,
       dayTime: "11/11/2022",
        user_id:1,
        menu_item_id: 1,
        total: 450
    })

    Order.create({
        quantity: 5,
       dayTime: "11/11/2022",
        user_id:2,
        menu_item_id: 5,
        total: 2250
    })

    Order.create({
        quantity: 1,
       dayTime: "11/11/2022",
        user_id:3,
        menu_item_id: 2,
        total: 100
    })

    Order.create({
        quantity: 1,
       dayTime: "11/11/2022",
        user_id:4,
        menu_item_id: 3,
        total: 100
    })

    Order.create({
        quantity: 10,
       dayTime: "11/11/2022",
        user_id:5,
        menu_item_id: 6,
        total: 3500
    })



puts "seeding user"

# "id": 1,
# "user_name": "admin",
# "email": "admin@bookameal.com",
# "user_type": "admin"
puts "done seeding user"


