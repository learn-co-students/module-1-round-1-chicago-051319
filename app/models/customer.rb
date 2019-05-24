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

  def self.find_by_name(name)
    @@all.find {|customer| customer == name} 
  end

  def self.find_all_by_first_name(name)
    @@all.split.find {|first, last| first == name}
  end

  def self.all_names
    @@all
  end
end
