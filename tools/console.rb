require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

me = Customer.new('Markus', 'Sanders')
random = Customer.new('Ran','Do')
tao = Restaurant.new('Tao')
mcDonalds = Restaurant.new('McDonalds')
imposter = Customer.new('Markus', 'Snadres')

me.add_review(tao,'favorite', 5)
random.add_review(tao, 'meh', 3)
random.add_review(tao, 'still meh', 3)
me.add_review(tao, 'still me fave', 5)
me.add_review(mcDonalds, 'asdfghjkl', 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
