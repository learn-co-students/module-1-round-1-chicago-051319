class Customer
  attr_reader :first_name, :last_name

  @@all=[]

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

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name==name
    end
  end
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.full_name==name
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end
  def add_review(restaurant, content, rating)
    Review.new(rating,content,self,restaurant)
  end

  def num_reviews
    all_my_reviews.count
  end

  def restaurants
    all_my_reviews.collect do |review|
      review.restaurant
    end
  end

  def all_my_reviews
    Review.all.select do |review|
      review.customer==self
    end
  end

end
