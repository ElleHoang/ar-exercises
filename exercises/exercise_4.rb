require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# 1. Borrowing and modifying code from Exercise one, create 3 more stores:
      # Surrey (annual_revenue of 224000, carries women's apparel only)
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)      
      # Whistler (annual_revenue of 1900000 carries men's apparel only)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
      # Yaletown (annual_revenue of 430000 carries men's and women's apparel)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# 2. Using [where] class method from Active Record, fetch (collection of) only those stores that carry men's apparel. Assign results to variable @mens_stores
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each mens_store and output their name and annual revenue on each line
@mens_stores.each do |store|
  puts "store: #{store.name}, revenue: #{store.annual_revenue}"
end

# 4. Do another fetch but load stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true, annual_revenue: -Float::INFINITY...1000000)
@womens_stores.each do |store|
  puts "store: #{store.name}, revenue: #{store.annual_revenue}"
end
