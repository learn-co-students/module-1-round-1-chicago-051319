class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def customers
    my_reviews = Review.all.select do |review|
      review.restaurant == self
    end

    my_customers = my_reviews.map do |review|
                    review.customer
                  end
  end

  def reviews
    my_reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    my_total_star_value = 0

     reviews.each do |review|
        my_total_star_value += review.rating
     end

    my_total_stars = reviews.count #because you cant have a star without a rating


    my_avg_star_rating = my_total_star_value / my_total_stars
  end

  def longest_review
    reviews.sort do |review_one, review_two|
        review_two.content.length  <=>   review_one.content.length
    end.first
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end


end
