class Customer
  attr_reader :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    mod_rating = rating.clamp(0,5) ## prevent invalid ratings
    Review.new(restaurant, content, mod_rating, self)
  end

  def reviews #gets all reviews made by curr inst of customer
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.reviews.size
  end

  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

end
