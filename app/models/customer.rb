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

  def add_review (restaurant, content, rating)
    reviews = []
    reviews << Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select do |reviews|
    Reviews.customer == self
    end
    # - Returns the total number of reviews that a customer has authored
    reviews.count
  end

  def restaurants
    Reviews.all.select do |reviews|
      if reviews.customer == self
        reviews.restuarants.uniq
      end
    end
    # - Returns a **unique** array of all restaurants a customer has reviewed
  end

  def self.find_by_name(full_name)
    if self.full_name = full_name
      return self
    end
  end
    # both_names = full_name.split (" ")
    # self.all.select do |names|
    #   if name.first_name = self.first_name && name.last_name == self.last_name
    #     return self
    #   end
    # end
    #????????????????/
      # given a string of a **full name**, returns the **first customer** whose full name matches

  def self.find_all_by_first_name(name)
    self.all.map do |names|
      if names.first_name = name
        return self
      end
    end
  end
      #given a string of a first name, returns an **array** containing all customers with that first name

  def self.all_names
    full_names = []
    self.all.map do |names|
      full_names << "#{names.first_name} #{names.last_name}"
    end
    full_names
    #return an **array** of all of the customer full names
  end

end
