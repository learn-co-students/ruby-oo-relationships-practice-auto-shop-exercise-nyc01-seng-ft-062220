require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nathan = Mechanic.new("Nathan", "standard")
jorge= Mechanic.new("Jorge", "exotic")

eli = CarOwner.new("Eli")
chiara = CarOwner.new("Chiara")


bmw = Car.new("BMW", "sedan", "standard", eli, nathan)
mclaren = Car.new("McLaren", "sport", "exotic", eli, jorge)
minivan = Car.new("Hyundai", "van", "standard", chiara, nathan)


binding.pry
0 #last line of code
