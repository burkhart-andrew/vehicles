require_relative "car.rb"

van = Car.new("Dodge", "Grand Caravan", 2013, 68000, 66000)
civic = Car.new("Honda", "Civic", 2013, 40200, 40000)

puts "All our cars:"
puts van.name
puts civic.name

van.drive(100)
civic.drive(3799)

puts van.name
puts civic.name

puts van.oil_change_status
puts civic.oil_change_status
