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

  def customers
    Review.all.select do |reviews|
      if reviews.restaurant == self
        return reviews.customers.uniq
      end
    end
  end
    #Returns a **unique** list of all customers who have reviewed a particular restaurant.

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
    #returns an array of all reviews for that restaurant
  end

  def average_star_rating
    all_rating = []
    reviews.collect do |reviews|
      all_rating << reviews.rating
    end
    sum = 0
    all_rating.each do |i|
      sum += i
    end
    average = sum/ (all_rating.count)
    average
  end

  def longest_review
    reviews.each do |review|
      long = review.content.sort_by {|x| x.length}
    end
    long[-1]
      # reviews.max_by(&:length)
    #returns the longest review content for a given restaurant
  end

  def self.find_by_name(name)
    self.all.find do |restuarants|
      if restaurants.name == self
        restaurant
      end
    end
  end
end
