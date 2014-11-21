require_relative 'vehicle'
class Car < Vehicle
	attr_accessor :number_of_seats, :is_automatic
	
	def initialize number_of_seats, is_automatic, mark, model, engine_power, number_of_wheels, max_speed
		@number_of_seats = number_of_seats
		@is_automatic = is_automatic
		super mark, model, engine_power, number_of_wheels, max_speed
	end

	def coupe_or_limo
		puts number_of_seats.to_i < 4 ? "This is coupe" : "This is limo"
	end 

	def manual_or_automatic
		puts is_automatic ? "Automatic" : "Manual"
	end	

	def full_details
		"#{number_of_seats}, #{is_automatic}, #{mark}, #{model}, #{engine_power}, #{number_of_wheels}, #{max_speed}"
	end
end

# mazda = Car.new "2", true, "Mazda", "3", "123hp", "4", "220"
# puts mazda.coupe_or_limo
# puts mazda.manual_or_automatic
# puts mazda.full_details