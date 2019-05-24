require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

derek= Customer.new("Derek","Townsend")
derek_two= Customer.new("Derek","Townsend")
micheal= Customer.new("Micheal","Alfred")
dave= Customer.new("Dave","Johnson")

italian_fiesta= Restaurant.new("Italian Fiesta")
buger_king= Restaurant.new("Buger King")
mc_donalds= Restaurant.new("Mc Donalds")

review_one=Review.new(1,"Burger King is trash",micheal,buger_king)
review_two=Review.new(3,"Burger King is not that great",dave,buger_king)
review_three=Review.new(5,"Italian Fiesta Amazing",derek,italian_fiesta)

dave.add_review(italian_fiesta,"Great Food",5)
# Review.new(rating,content,customer,restaurant)
# p italian_fiesta.longest_review
# p dave.full_name
# p Customer.all
# p Restaurant.all
# p Review.all
# p dave.num_reviews
# p dave.restaurants
# p Customer.find_by_name("Derek Townsend")
# p Customer.all_names
# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
