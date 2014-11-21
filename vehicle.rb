class Vehicle
	attr_accessor :mark, :model, :engine_power, :number_of_wheels
	attr_reader :max_speed

	def initialize mark, model, engine_power, number_of_wheels, max_speed
		@mark = mark
		@model = model
		@engine_power = engine_power
		@number_of_wheels = number_of_wheels
		@max_speed = max_speed
	end

	def mark_and_model	
	"#{mark} - #{model}"
	end
end