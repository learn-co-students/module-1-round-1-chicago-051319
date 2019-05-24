class Restaurant
  attr_reader :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def find_self
    Review.all.select do |review| 
      review.restaurant == self
    end
  end

  def customers
    self.find_self.map do |review| 
      review.customer.first_name + " " + review.customer.last_name
    end.uniq!
  end

  def reviews
    self.find_self.map do |review| 
      review.content
    end
  end

  def average_star_rating
    
    arr = self.find_self.map do |review| 
      review.rating
    end
    arr.inject(0.0) { |sum, el| sum + el } / arr.size
  end

  def longest_review
    self.find_self.max do |review_one, review_two|
      review_one.content.length <=> review_two.content.length
    end
  end
end
