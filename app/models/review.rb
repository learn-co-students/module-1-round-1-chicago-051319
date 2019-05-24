class Review
  attr_accessor
  attr_reader :customer, :restaurant, :rating, :content#??reader or writer

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
