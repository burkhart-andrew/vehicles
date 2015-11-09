# prompt user for car information
# - make
# - model
# - year
# - miles
# - last_oil_change
# other information?
# - owner
require_relative "car.rb"

class CarForm
	def initialize()
		@make = nil
		@model = nil
		@year = nil
		@miles = nil
		@last_oil_change = nil

	end

	def ask_for_year
		@year = ask_for_info("What YEAR is your car?") do |year| 
			year.to_i > 1900 && year.to_i < Time.now.year + 2
		end.to_i
	end

	def ask_for_make
		@make = ask_for_info("What MAKE is your car")
	end

	def ask_for_model
		@model = ask_for_info("What MODEL is your #{@make}?")
	end

	def ask_for_miles
		@miles = ask_for_info("How many miles does your #{@model} have?") do |mileage|
			mileage.to_i > 0
		end.to_i
	end
	
	def ask_for_oil
		@last_oil_change = ask_for_info("At what mileage was your last oil change?") do |mileage|
			mileage.to_i > 0 && mileage.to_i < @miles.to_i
		end.to_i
	end

	def to_car
		Car.new(@make, @model, @year, @miles, @last_oil_change)
	end

	private

	#def ask_for_info(q)
	# 	val = nil
	# 	until !val.nil? && !val.empty? && block_given? && yield(val) 
	# 		puts q 
	# 		val = gets.chomp
	# 	end
	# 	val
	# end
	
	def ask_for_info(q)
		loop do
			puts q
			val = gets.chomp
			
			# validations
			next if val.nil?
			next if val.empty?
			if block_given?
				if yield(val)
					return val
				end
			else
				return val
			end
		end
	end
	
end

