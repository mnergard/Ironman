class Car
	
	def initialize(sound_to_make, speed) #(methods inside)
	@car_sound = sound_to_make #parameter
	@speed = speed
	
	end
	

	def sound
		puts @car_sound
	end
	def speed_up
		@speed = @speed + 10
		puts @speed
	end
def self.sound(car) #class method
	car.sound
	car.sound
		end	
end



my_car = Car.new("Broom", 60) # variable = class.method(sort of)(Instance which is initialized in def initialize)
my_car.sound
my_car.speed_up	

my_race_car = Car.new("Brooooom", 100)
my_race_car.speed_up
my_race_car.speed_up

Car.sound(my_race_car) #calling class method




#we can give Instances the same value all the times you enter car.new)
