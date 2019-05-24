class Customer
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  @@all = []

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
    #input = customer instance
    #output = NUMBER of customer's Reviews
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def restaurants
    #input = customer instance
    #output = new array of restaurant instances CONTAINING ALL of this customer's instance's reviewed RESTAURANTS
            #[Restaurant Instances from REVIEWS from THIS CUSTOMER]

    my_reviews = Review.all.select do |review|
                  review.customer == self
                end #new array containing this customer's reviews

    my_reviews.map do |review|
      review.restaurant
    end
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

end
