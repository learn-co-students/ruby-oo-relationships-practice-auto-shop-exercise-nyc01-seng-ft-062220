
class CarOwner

  attr_reader :name
@@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

def cars
  Car.all.select {|car| car.owner==self}
end

 def mechanics
  cars.uniq
classif=cars.map {|car| car.classification}
Mechanic.all.select {|mech| classif.include?(mech.specialty)}
end

def self.average_number_of_cars
  all_cars=Car.all.length
  all_owners=all.length
all_cars/all_owners
end
end
