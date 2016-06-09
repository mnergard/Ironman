#Functions
def say_hello #define...
	puts "Hello!" #...a function
end

say_hello #calling the function

puts "-------------------------"
#Arguments

def say_hi(name) #define (param)
	puts "Hi, #{name}!" #...a function, {argument. information passed from the outside}	
end

say_hi("Rafa") #say_hi is the same name as the argument
say_hi("Xavi")
#say_hi("Isra", "Fernando") will not work since the function only has one param
puts "-------------------------"
#Expressions
def say_hey(name)
	puts "Hello #{name}!"
end
say_hey("James" + " Bond") # argument does not need to be a single value
#if it is joined by an operator. (can still not be separated by a ,)
#a better example
def add(a, b)
	puts a + b
end
add((5*5), (5 + 3))
puts "-------------------------"
#Using flow control
def taste(food) #still a function (param)
	if food == "bacon" #if condition
		puts "Yummy!!! Bacon!!!" #execute code
	end
end

taste "spinach"
taste "bacon"
#other ways of controlling is elsif and else
puts "-----------------------------"
#Return value
def square(number)  #is a function (param)
	puts number * number #the function
end

square(4) #calling the function and giving the param the value of 4
#in this instance the function is not being display because there are
#no code to tell it to show. If you put puts in front of square
#either in line 44 or 47, it will appear. But put is outside the function for 
#otherwise the puts can give a nil value in pry.
def add(a, b) #function (param)
	return a + b #the function, but also a method of saying return this value and stop there
	return a * b #will not show
	return a ** b #also is not executed
end
puts add(1, 3)
puts "-------------------------"
#you can return several values
def add1(a, b) #name of the function (params)
	calc1 = a + a #function
	calc2 = a + b #more than one function
	calc3 = b + b #this will be called if the return wasn't there
	return calc1, calc2, calc3 #return more than one value and stop there
end
puts add1(2, 4)

puts "return can be useful like this:"
def square(num)
	sqr_num = num * num 
	if sqr_num > 100
		return "Number is too big"
	end
	sqr_num #this is needed. And it needs to be after the if. It's a
	#matter of how the program reads code first.
end
puts square(gets.to_i)







































