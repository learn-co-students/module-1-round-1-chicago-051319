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

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant == name}
    #this is still treated as a string, not an array. @@all needs to be properly accessed as
    #an array
  end

end
