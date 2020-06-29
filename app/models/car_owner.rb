class CarOwner

  attr_reader :name

  def initialize(name)
    @name = name
  end


end

# CarOwner.all Get a list of all owners

# CarOwner#cars Get a list of all the cars that a specific owner has

# CarOwner#mechanics Get a list of all the mechanics that a specific owner goes to

# CarOwner.average_number_of_cars Get the average amount of cars owned for all owners
