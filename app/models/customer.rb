class Customer

  attr_reader :first_name, :last_name, :num_reviews

  @@all = []
  def initialize(first_name, last_name)

    @first_name = first_name
    @last_name  = last_name
    @num_reviews = 0
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, content, rating)
    @num_reviews += 1
  end

  def restaurants_visited
    Review.all.select do |restaurant| 
      restaurant.customer == self
    end
  end

  def restaurants
    self.restaurants_visited.map do |review| 
      review.restaurant.name
    end.uniq!
  end


  def self.all
    @@all
  end

  # Customer.find_by_name(name)
  # In the instantiate 
  # class variable call on @all and search == name



end
