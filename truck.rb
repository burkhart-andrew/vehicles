require_relative 'car.rb'

class Truck < Car
	def self.miles_per_oil_change
		15000
	end

	def honk
		"HOOOOOOOOOOOOOONNNNNNNKKKKKK!"
	end
end
