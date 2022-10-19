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
  spicy_foods.map {|spicy_food|spicy_food[:name]}
end

def spiciest_foods(spicy_foods)
  # your code here
spicy_foods.filter{|spicy_food|spicy_food[:heat_level]>5 }
end

def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.each do |spicy_food|
  puts  "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: " + "🌶" * spicy_food[:heat_level]
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find {|spicy_food| spicy_food[:cuisine]==cuisine}
end

def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort_by {|spicy_food| spicy_food[:heat_level]}
end

def print_spiciest_foods(spicy_foods)
  # your code here
  print_spicy_foods(spiciest_foods(spicy_foods))
end

def average_heat_level(spicy_foods)
  # your code here
spicy_foods.sum {|spicy_food| spicy_food[:heat_level]}/spicy_foods.length
end

average_heat_level(spicy_foods)
 