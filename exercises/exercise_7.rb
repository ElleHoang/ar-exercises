require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# ask user for store name (store it in varible)
puts "Please enter a store name"
store_name = gets.chomp

# attempt to create a store with the inputted name, but leave out other fields (annual_revenue, mens_apparel, womens_apparel)
create_store = Store.create(name: store_name)

# display error msg provided back from ActiveRecord to user (one on each line) after attempt to save/create record
puts create_store.errors.messages
