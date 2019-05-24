require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

yuta = Customer.new("Yuta", "Katsuyama")
tom = Customer.new("Tom", "Hanks")
kohan = Restaurant.new("Kohan")
chipotle = Restaurant.new("Chipotle")
review_japa = Review.new(yuta, kohan, 5, "Great!" )
review_mex = Review.new(tom, chipotle, 3, "So-so")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
