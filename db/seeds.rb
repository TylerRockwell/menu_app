# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# courses = [ "Weekend Brunch", "Brunch Cocktails", "Homemade Desserts",
#             "Mainstream Therapies", "Alternative Therapies", "Quick Fixes",
#             "Natural Cure-Alls", "Blue Plates", "Over-The-Counter Elixirs"]

courses = ["Mainstream Therapies", "Quick Fixes", "Natural Cure-Alls"]

courses.each do |name|
  Course.create!(name: name)
end

dishes = [{name: "The Big Ka-Tuna", description: "Homemade tuna salad on a Kaiser.",
            price: 10.35, course: "Mainstream Therapies"},
          {name: "Turkey Pesto", description: "Thin slices of turkey, pesto mayo, bacon, avocado,lettuce and tomato, on toasted sourdough.",
            price: 10.35, course: "Mainstream Therapies"},
          {name: "The REAL Reuben", description: "Pastrami, sauerkraut, swiss, thousand island, served hot on rye. *available as a turkey reuben*",
            price: 10.35, course: "Mainstream Therapies"},
          {name: "Soup of the Day", description: "Always vegetarian & homemade. (not available on weekends)",
            price: 5.00, course: "Quick Fixes"},
          {name: "Buffalo Non-Chicken Wings", description: "Soy wings in buffalo sauce with celery and vegan ranch. *Winner of PETA’s Top 5 Vegan Wings in USA*",
            price: 8.50, course: "Quick Fixes" },
          {name: "Fried Broccoli", description: "Served with vegan ranch.",
            price: 8.50, course: "Quick Fixes"},
          {name: "Goat Cheese", description: "Spinach, sun-dried tomatoes, homemade croutons, and toasted almonds. Topped with two slabs of warm goat cheese coated in a crunchy almond and sundried tomato crust.",
            price: 12.00, course: "Natural Cure-Alls"},
          {name: "Zoo Bee", description: "Mixed greens, tuna salad, bacon, avocado, gorgonzola, boiled egg, red onion.",
            price: 12.00, course: "Natural Cure-Alls"},
          {name: "House", description: "Mixed greens, cucumbers, tomatoes, carrots, green peppers and red onion.",
            price: 10.00, course: "Natural Cure-Alls"} ]

dishes.each do |dish|
  Dish.create!(name: dish[:name], description: dish[:description], price: dish[:price], course: Course.find_by(name: dish[:course]))
end
