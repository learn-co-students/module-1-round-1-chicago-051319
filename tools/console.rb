require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new("John", "Linatoc")
john_two = Customer.new("John", "Linatocy")
paul = Customer.new("Paul", "Linatoc")
reggie = Customer.new("Reggie", "Palencia")

rubys = Restaurant.new("Ruby's")
mcdo = Restaurant.new("McDonald's")

review_one = Review.new(john, rubys, 100, "good")
review_two = Review.new(paul, rubys, 7, "badasdfasd")
review_three = Review.new(reggie, mcdo, 32, "okayasdfasdfas")

john.add_review("burger king", "better", 3) #add review works, but do they want the name of the customer or instance?
john.restaurants #works, but do they want the name or instance?


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
