require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Ann", last_name: "Perkin", hourly_rate: 16)
@store1.employees.create(first_name: "Ron", last_name: "Swanson", hourly_rate: 23)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 31)
@store2.employees.create(first_name: "Clark", last_name: "Kent", hourly_rate: 22)
