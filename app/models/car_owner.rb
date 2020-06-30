class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|id| id.car_owner == self}
  end

  def mechanics
    self.cars.select {|id| id.mechanic}
  end

  def self.average_number_of_cars
    Car.all.count.to_f / CarOwner.all.count
  end

end
