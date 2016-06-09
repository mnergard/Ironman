class Car
	def initialize(name, sound, engine)
		@name = name
		@sound = sound
		@engine = engine
	end
	def sound	
		puts @name
		puts @sound
		@engine.sound
	end
end


class Engine
	def initialize(sound)
		@sound = sound
	def sound
		puts @sound
	end
end
end

class ElectricEngine < Engine
	def initialize
		super("shhhhhh")
	end
end

class GasoilEngine < Engine
	def initialize
		super("Brrrrr")
	end
end
puts "Electric car sounds like: "
Car.new("Tesla", "BRROOOOOMMM", ElectricEngine.new).sound
puts "GasoilEngine car sounds like:"
Car.new("Bmw", "BRROOOOOMMM", GasoilEngine.new).sound
