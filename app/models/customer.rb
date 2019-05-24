class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.length do |review|
      review.customer == self
    end
  end

  def restaurants
    Review.all.select do |restaurant|
      restaurant.customer == self
    end.uniq
  end

  # To-do (work in progress)
  # def self.find_by_name(name)
  #   Customer.find do |name|
  #     name == self.full_name
  #   end
  # end

  # def self.find_all_by_first_name(name)

  # end

  # def self.all_names
  #   all_names = []
  #   all_names << full_name
  # end

end
