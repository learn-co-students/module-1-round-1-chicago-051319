require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#
# emily = Customer.new("emily", "smith")
# lauren = Customer.new("lauren", "smith")
# pizza = Restaurant.new ("pizza")
# # Restaurant.new
# Review.new(emily, restaurant, 4, "good")
# # Review.new



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
