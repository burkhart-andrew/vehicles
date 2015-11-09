require_relative 'truck.rb'

t1 = Truck.new("Mack", "Truck", 2015, 250_000, 240_000)
puts t1.name
puts t1.oil_change_status
puts t1.honk