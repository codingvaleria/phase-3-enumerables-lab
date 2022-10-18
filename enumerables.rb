require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  # your code here
  spicy_foods.map {|spicyfood|spicyfood[:name]}
end

def spiciest_foods(spicy_foods)
  # your code here
spicy_foods.filter{|spicyfood|spicyfood[:heat_level]>5 }
end

def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.each do |spicyfood|
  puts  "#{spicyfood[:name]} (#{spicyfood[:cuisine]}) | Heat Level: " + "🌶" * spicyfood[:heat_level]
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find {|spicyfood| spicyfood[:cuisine]==cuisine}
end

def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort_by {|spicyfood| spicyfood[:heat_level]}
end

def print_spiciest_foods(spicy_foods)
  # your code here
  print_spicy_foods(spiciest_foods(spicy_foods))
end

def average_heat_level(spicy_foods)
  # your code here
 puts spicy_foods.sum {|spicyfood| spicyfood[:heat_level]} / spicy_foods.length
end

 