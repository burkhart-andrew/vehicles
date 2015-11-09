class Car

	def initialize(make, model, year, miles, last_oil_change)
		@make = make
		@model = model
		@year = year
		@miles = miles
		@last_oil_change = last_oil_change

	end

	def self.miles_per_oil_change
		4000
	end

	def name()
		"Your car is a #{@year} #{@make} #{@model} and has #{@miles} miles"
	end

	def drive(new_miles)
		@miles = @miles + new_miles
	end

	def change_oil!
		# change the oil
	end

	def oil_change_status()
		miles_till = self.class.miles_per_oil_change - (@miles - @last_oil_change) 
		miles_since = @miles - @last_oil_change

		if oil_needs_changing?
			"It has been #{miles_since} miles since my last oil change. It needs to be changed!"
		else 
			"It has been #{miles_since} miles since my last oil change. I have another #{miles_till} miles before the next oil change!"
		end
	end

	def oil_needs_changing?
		@miles > @last_oil_change + self.class.miles_per_oil_change
		
	end		
end
