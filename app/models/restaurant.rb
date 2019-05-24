class Restaurant
  attr_reader :name, :customer, :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name
    self.all.find{|name| name == self}
  end

  def customers
    Customer.all.select do |cust|
      customer.restaurant == self
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating(rating)
    #from reviews above method, find rating and calc average.
    reviews.inject{|sum, element| sum + element} / reviews.size
    end
  end

  def longest_review(review)
    #interates through reviews which we find above that connected to this
    #restaurant and find the review which is longest
    reviews.find{|review|review.size.max}
  end
