class Restaurant
  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name==name
    end
  end

  def customers
    reviews.collect do |review|
      review.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant==self
    end
  end

  def average_star_rating
    ratings=reviews.collect do  |review|
      review.rating
    end
    (ratings.sum)/ratings.count
  end

  def longest_review
    reviews.max{ |a,b| a.content.length <=> a.content.length}.content
  end

end
