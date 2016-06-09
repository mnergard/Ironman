class Car # class
  def honk #Instance
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new #new is call method
my_car.honk
puts my_car.class
puts "cosa".class
puts 4.class

puts "**********************"

class Bike
	def initialize(color) #instalization of instances
		@color = color #instance varible
	end

	def honk #instance method
		puts "Beeeeeeeeep"
	end

	def print_color
		puts @color
	end
end

my_car = Bike.new "red"
other_car = Bike.new "grey"

my_car.print_color
other_car.print_color
my_car.honk

puts"***************************"

class Car #Accessor methods
  attr_accessor :color #attr.accessor is the accessor method. 
  #it gives access to instance varibles outside of the instance varible

  def initialize(color)
    @color = color
  end

  def honk
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new "yellow" #Car.new is still the way that the class is called
#After Car.new you still need something because it of (argument) in def initialize
other_car = Car.new "brown"

my_car.color = "grey" #which makes this possible. It calls line 43
#it overrides it too.
puts my_car.color
puts other_car.color

puts"***************************"
#Inherit
#This is useful if we have a generic class that we want to use as a base to create more specific classes:
class Animal
	def initialize(name)
		@name = name
	end
	def describe
		puts "This animal's name is #{@name}"
	end
end

class Dog < Animal
end
class Cat < Animal
end
class Human < Animal
	def initialize(name, salary)
		super(name)
		@salary = salary
	end
	def describe_with_salary
		puts "This human's name is #{@name} and its salary is #{@salary}"
	end
end

dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Apples", 1200

dog.describe
cat.describe
human.describe_with_salary










