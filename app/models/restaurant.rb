class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select do |customer|
      customer.restaurant == self
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # work in progress
  def average_star_rating
    reviews.length
    sum_of_rating = 0
    reviews.each do |rating|
    sum_of_rating = "sum_of_rating".to_i + "rating".to_i
    end
    puts sum_of_rating / reviews.length

  end

  def longest_review
    reviews.max do |review_1, review_2|
      review_1 <=> review_2
    end
  end

end
