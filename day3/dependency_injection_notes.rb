class Car
end
class Motorbike
end
class Engine
end

class CarCreator
	def create_new_car(power,brand)
		engine = Engine.new(power)
		Car.new(engine)
		Motorbike.new(engine)
	end

end
