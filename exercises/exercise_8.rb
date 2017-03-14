require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@chuck = @store2.employees.create(first_name: 'Chuck', last_name: 'Kosman', hourly_rate: 50)
puts @chuck.password
