require "pry"

class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|c| c.mechanic == self}
  end

  def car_owners
    self.cars.map {|c| c.car_owner}
  end

  def car_owners_name
    self.car_owners.map {|co| co.name}
  end

end
