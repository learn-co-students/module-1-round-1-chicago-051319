class Review #belongs to customer and restaurant. joiner
  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize (restaurant, content, rating, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

      ##attr_reader methods##
      #p tao.reviews.first.customer
      # def customer
      #   @customer
      # end
      #
      # def restaurant
      #   @restaurant
      # end
      #def rating
        ##see customer review.
        #rating clamped to prevent invalid amounts
      #end

end
