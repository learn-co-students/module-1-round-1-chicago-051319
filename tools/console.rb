require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

class Review

  attr_reader :customer, :restaurant, :rating
  
  @@all = []
    
    def initialize(customer, restaurant, rating)
      @customer = customer
      @restaurant = restaurant
      @rating = rating
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  
  end
review_1 = Review.new("Joe", "Pizza Boi", 4)
review_2 = Review.new("Sally", "Sushi Hiro", 5)

class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name.collect do |restaurant|
    #this gives an undefined method error for "collect." Can't use collect on a string, so this
    #must be turned into an array
      restaurant == name
    end
  end

end

pizza_boi = Restaurant.new("Pizza Boi")
sushi_hiro = Restaurant.new("Sushi Hiro")

class Customer
  attr_reader :first_name, :last_name
  @@all = []
  

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.find {|customer| customer == name} 
    #undefined method here, same issue as in other class. Need to properly access @@all as
    #an array
  end

  def self.find_all_by_first_name(name)
    @@all.split.find {|first, last| first == name}
  end

  def self.all_names
    @@all
  end
end

joe=Customer.new("Joe", "Smith")
sally=Customer.new("Sally", "Berger")
barry=Customer.new("Barry", "Block")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
