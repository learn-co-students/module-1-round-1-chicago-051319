class Review

  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  def initialize(customer, restaurant, rating=0, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  #ran out of time figuring out how to limit review to number 1-5
  #ran out of time figuring out how to limit content to string



end
