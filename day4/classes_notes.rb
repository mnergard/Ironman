class AnimalKeeper
	def feedAnimal(food)
		puts "Eating #{food}" #type this line immediatly to make sure you see results
	end

end

class Cowboy < AnimalKeeper
	def feedAnimal(food)
		super(food)
	end

end
food = "Lasagnaa"
Cowboy.new.feedAnimal(food)

puts "-------------------------"

class AnimalKeeper
	attr_writer :farm
	def initialize(farm)
		@farm = farm
	end
	def see_current_farm
		puts @farm
	end

end
keeper = AnimalKeeper.new("Pepito¡s")
keeper.see_current_farm
keeper.farm = "Muumu"
keeper.see_current_farm
puts "--------------------------"
class Teacher
	attr_writer :teaches
	def initialize(teaches)
		@teaches = teaches
	end
	def see_lesson
		puts @teaches
	end
end
lesson = Teacher.new("Ruby")
lesson.see_lesson
lesson.teaches = "git"
lesson.see_lesson
puts "---------------------------"













