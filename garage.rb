require_relative '../classes/motorbike'
require_relative '../classes/car'
class Garage
	@@max_places = 3
	@@parked_vehicles = []

	def self.garage_status
		puts "Currently garage status is: #{@@parked_vehicles.length}"
		if @@parked_vehicles.empty? 
			puts "There is no vehicles"
		else
			@@parked_vehicles.each do |vehicle|
				puts vehicle.mark_and_model
		end
	end

	def self.park_in vehicle
		if free_for_parking
			@@parked_vehicles << vehicle
			puts "Successeful added #{vehicle.mark_and_model} to garage."

		else
			puts "Garage is full! Try later!"
		end
	end

	def self.park_out vehicle
		if @@parked_vehicles.empty? 
			puts "No vehicles"
		else
			if @@parked_vehicles.include? vehicle 
				@@parked_vehicles.delete vehicle
				puts "Successefuly removed #{vehicle.mark_and_model}" 
			else
				puts "#{vehicle.mark_and_model} not in garage!"
			end
		end
	end

	def self.free_for_parking
		@@parked_vehicles.length < @@max_places
	end
end

kava = Motorbike.new "Kavasaki", "ZX2", "150", "2", "320"
mazda = Car.new "2", true, "Mazda", "3", "123hp", "4", "220"
bmw = Car.new "4", true, "BMW", "3", "123hp", "4", "220"
audi = Car.new "2", true, "AUDI", "A3", "123hp", "4", "220"
Garage.garage_status
Garage.park_in mazda
Garage.park_in kava
Garage.garage_status
Garage.park_out mazda
Garage.garage_status
Garage.garage_status
Garage.park_in mazda
Garage.park_in bmw
Garage.garage_status
Garage.park_out audi
Garage.garage_status
Garage.park_in mazda
# Garage.garage_status
# Garage.park_in
# Garage.garage_status
# Garage.park_in
# Garage.garage_status
# Garage.park_in
# Garage.park_out
# Garage.garage_status
# Garage.park_in