# car_form_test.rb
require_relative "car_form.rb"

form = CarForm.new
form.ask_for_make
form.ask_for_model
form.ask_for_year
form.ask_for_miles
form.ask_for_oil
sedan = form.to_car
puts sedan.name
puts sedan.drive(100)
puts sedan.oil_change_status

# ...
# van = form.to_car
# van.name