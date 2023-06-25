r1 = Restaurant.create(name: "Gaitoes",address: "Weid")
r2 = Restaurant.create(name: "Bambino",address: "Seid")
r3 = Restaurant.create(name: "Sanhatt",address: "Geid")


p1=Pizza.create(name: "Neapolitan ",ingredients: "fresh mozzarella, tomatoes, basil leaves, oregano, and olive oil")
p2 =Pizza.create(name: "Chicago ",ingredients: "ground beef, sausage, pepperoni, onion, mushrooms, and green peppers")
p3=Pizza.create(name: "Sicilian ",ingredients: " tomato, onion, anchovies, and herbs")
p4=Pizza.create(name: "Greek ",ingredients: "tomato paste ,cheese,black olives, and red onion")
p5=Pizza.create(name: "California ",ingredients: "chicken,artichokes ,goat cheese and egg")
p6=Pizza.create(name: "Detroit ",ingredients: " pepperoni, brick cheese (usually Wisconsin brick cheese), and tomato sauce")

RestaurantPizza.create(price: 5, pizza_id: p1.id, restaurant_id: r1.id)
RestaurantPizza.create(price: 4, pizza_id: p1.id, restaurant_id: r2.id)
RestaurantPizza.create(price: 10, pizza_id: p2.id, restaurant_id: r3.id)
RestaurantPizza.create(price: 7, pizza_id: p2.id, restaurant_id: r1.id)
RestaurantPizza.create(price: 6, pizza_id: p3.id, restaurant_id: r2.id)
RestaurantPizza.create(price: 8, pizza_id: p4.id, restaurant_id: r3.id)
RestaurantPizza.create(price: 3, pizza_id: p4.id, restaurant_id: r1.id)
RestaurantPizza.create(price: 12,pizza_id: p5.id, restaurant_id: r2.id)
RestaurantPizza.create(price: 5, pizza_id: p5.id, restaurant_id: r3.id)
RestaurantPizza.create(price: 3, pizza_id: p3.id, restaurant_id: r1.id)
RestaurantPizza.create(price: 8, pizza_id: p6.id, restaurant_id: r2.id)
RestaurantPizza.create(price: 9, pizza_id: p6.id, restaurant_id: r3.id)
