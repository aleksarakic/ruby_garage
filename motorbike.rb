require_relative 'vehicle'
class Motorbike < Vehicle

	def initialize mark, model, engine_power, number_of_wheels, max_speed
		super mark, model, engine_power, number_of_wheels, max_speed
	end

	def type_of_bike
		engine_power = self.engine_power.to_i
		if engine_power.between? 100, 150
		 "Cruser"
		elsif engine_power.between? 151, 299
		 "Motocross"
		elsif engine_power >= 300
		 "Sport"
		else
		 "that dont exist"
		end
	end
end
# kava = Motorbike.new "Kavasaki", "ZX2", "150", "2", "320"
# puts kava.type_of_bike


