class Customer
  attr_reader :first_name, :last_name, :restaurant, :content
  attr_accessor :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review (restaurant, content, rating)

    if rating < 0
      rating = 0
    elsif rating > 5
      rating = 5
    else
      rating.to_i
    end

    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    my_reviews = []
    Review.all.select do |review|
      if review.customer == self
      my_reviews << review
      end
    end
    my_reviews.length
  end

  def restaurants
    Review.all.select do |review|
      if review.customer == self
        review.restaurant
      end
    end
    #this is returning the whole review--tap into the restaurant name!
  end

  def self.find_by_name(name)
    #similar framework as the restaurant find by name
    # test output with alex vs. other_alex
    self.all.find do |customer|
      customer.first_name == name
    end
  end

  def self.find_all_by_first_name(name)
    #build forward from the find_by_name method
    #return an array of ALL the names that match, not just the first name
    #confirm test output with alex vs other_alex
    #this is clunky -- how to refine!
    matching_names = []
    self.all.map do |customer|
      if customer.first_name == name
        matching_names << customer
      end
    end
    matching_names
  end

  def self.all_names
    self.all.select do |customer|
      customer.full_name
    end
  end
end
