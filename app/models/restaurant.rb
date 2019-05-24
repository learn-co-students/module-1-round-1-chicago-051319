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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def total_stars #get total amount of stars for this rest inst
    count = 0
    self.reviews.each {|review| count += review.rating}
    count
  end

  def average_star_rating
    num_reviews = self.reviews.size
    num_stars = self.total_stars
    num_stars / num_reviews
  end

  def review_content
    self.reviews.map {|review| review.content}
  end

  def longest_review
    self.review_content.max {|a, b| a.length <=> b.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
  
end
