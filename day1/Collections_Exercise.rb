class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end
  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

puts "---------------------"
aged_languages = array_of_languages.map #! { | language | language.age += 1 } #Your code goes here
puts "The programming languages aged one year are: "

array_printer(aged_languages)
#I think something is happening to my ||

puts "---------------------"

#array_printer(array_of_languages).sort 
puts "---------------------"


class Fruits
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

apple = Fruits.new("Apple", 10)
banana = Fruits.new("Banana", 5)

array_of_fruits = [apple, banana]

def array_printer(array)
  array.each do | display |
    puts "#{display.name} #{display.price}"
  end
end
array_printer(array_of_fruits)
puts "---------------------"

class Ship
  attr_accessor :speed, :height
  def initialize(speed, height)
    @speed = speed
    @height = height
  end
end

battleship = Ship.new(140, 50)
carrier = Ship.new(40, 200)

my_array = [battleship, carrier]
def  array_show (param)
  param.each do |hm|
    puts "speed is #{hm.speed}, but height is #{hm.height}."
  end
end
array_show(my_array)

