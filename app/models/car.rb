class Car

  attr_reader :make, :model, :classification
  attr_accessor :car_owner, :mechanic
  @@all = []
  def initialize(make, model, classification, car_owner=nil, mechanic=nil)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|id| id.specialty == classification}
  end

end
