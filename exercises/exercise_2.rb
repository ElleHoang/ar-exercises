require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# 1. Load first store (id = 1) from database and assign it to an instance variable @store1
@store1 = Store.find_by(id: 1)
# 2. Load second store from database and assign it to @store2
@store2 = Store.find_by(id: 2)
# 3. Update first store (@store1) instance in database. (Change its name or something)
@store1.update(mens_apparel: false)

# puts Store.first.inspect