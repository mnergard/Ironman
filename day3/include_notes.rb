module Greetable
	def hi
		puts "Hello"
	end
end
class Included
	include Greetable
end
Included.new.hi
class Extended
	extend Greetable
end
Extended.hi

my_obj = Object.new
my_obj.extend(Greetable)
my_obj.hi