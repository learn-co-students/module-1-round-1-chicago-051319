require 'bundler/setup'
Bundler.require
require_rel '../app'

a = Review.new("al's beef" , "kewl" , 6 , "zippy")
b = Review.new("al's beef" , "kewl" , 6 , "zippy")
c = Review.new("al's beef" , "kewl" , 6 , "zippy")


bill = Customer.new("bill" , "barter")
bal = Customer.new("bill" , "ball")
chris = Customer.new("Chris" , "jerhericho-ko")
#p bill
bill.add_review("kats" , "message!" , 9)
#p Review.all
a = Customer.find_all_by_first_name("bill")
p a
#p bal
puts "-------------------------------"

als = Restaurant.new("al's beef")
bdubs = Restaurant.new("Bdubs")

#a = Restaurant.find_by_name("als")
p als.reviews
p als.customers
p als.average_customer_review