require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

macdonalds = Restaurant.new("Macdonalds")
billy_joe = Customer.new("Billy", "Joe")
sally_blue = Customer.new("Sally", "Blue")
frank_sinatra = Customer.new("Frank", "Sinatra")

billy_joe.add_review(macdonalds, "Yum!", 7)
sally_blue.add_review(macdonalds, "I'm Loving it!", 9)
billy_joe.add_review(macdonalds, "Yum!", 7)

billy_joe.restaurants

binding.pry
0 #leave this here to ensure binding.pry isn't the last line