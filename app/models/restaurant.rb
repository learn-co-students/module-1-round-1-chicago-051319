class Restaurant
  attr_reader :name, :customer, :review


  @@all = []

  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    Review.all.select do |review|
      if review.restaurant.name == self.name
        review.customer
      end
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant.name == self.name
    end
  end

  def average_star_rating
    ratings = []
    Review.all.select do |review|
      if review.restaurant.name == self.name
        ratings << review.rating
      end
    end
    average_rating = ratings.sum / self.customers.count
    average_rating
  end

  def longest_review
    self.reviews.max do |review1, review2|
      review1.content.length <=> review2.content.length
    end
  end

  def self.find_by_name(name)
    #filter through the Restaurant.all to find the restaurant.name instance that matches
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
