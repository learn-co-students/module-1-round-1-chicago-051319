class Customer
  attr_reader :first_name, :last_name
  attr_accessor :restaurant, :content, :rating, :review

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(customer, restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews(cust)
    #need to interate all reviews which has been written by this customer
    #and returns total number of reviews that thic customer wrote.
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants(restaurant)
    self.num_reviews.select do |restaurant|
      restaurant.customer == self
    end.uniq
  end

  def self.find_by_name(first_name, last_name)
    self.all.find{|x, y| x == first_name && y == last_name}
    return "#{first_name} + #{last_name}"
  end

  def self.all_names
    #should return an **array** of all of the customer full names
    self.all.map do |first_name, last_name|
      first_name + last_name #I don't know where to begin with gathering name and added up
      #probably from Customer @@all array and gather first and last name and added up together with map.
    end
  end

end



#I am not familira with using test or console.rb at all...
#I know how to use it but it doesn't mean that I can use effectively....
