require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new("alex","hare")
ana = Customer.new("ana","hare")
nate = Customer.new("nate","hare")
lynn = Customer.new("lynn", "kuznitz")
root = Customer.new("root","kuznitz")
other_alex = Customer.new("alex","the great")

nico = Restaurant.new("nico osteria")
big_star = Restaurant.new("big star")
avec = Restaurant.new("avec")
doves = Restaurant.new("dove's")
publican = Restaurant.new("publican")

alex.add_review(nico, "Overpriced fake italian food", 3)
alex.add_review(big_star, "TACOS", 5)
alex.add_review(avec, "mediterannean yum", 4)

ana.add_review(nico, "Overpriced fake italian food", 3)
nate.add_review(big_star, "TACOS", 5)
nate.add_review(avec, "mediterannean yum", 4)

lynn.add_review(nico, "Overpriced fake italian food", 3)
lynn.add_review(nico, "that burger tho", 5)
root.add_review(doves, "CHICKEN FRIED CHICKEN", 10)

other_alex.add_review(doves, "what is chicken fried chicken?", 1.3)

# p nico.reviews
# p big_star.reviews
# p publican.reviews

p nico.customers

#tested a lot through pry sessions

binding.pry
0 #leave this here to ensure binding.pry isn't the last line