class Review
  attr_accessor :rating,:content
  attr_reader :customer, :restaurant

  @@all=[]

  def initialize(rating,content,customer,restaurant)
    @rating=rating
    @content=content
    @customer=customer
    @restaurant=restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
