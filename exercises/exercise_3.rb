require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# 1. load third store (into @store3)
@store3 = Store.find_by(id: 3)
# 2. using Active Record's [destory] method, delete the store from database
@store3.destroy
# 3. verify that store has been deleted by outputing [count]
puts Store.count
#puts Store.all.inspect