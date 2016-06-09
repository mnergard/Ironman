class MyClass
	def initialize(x)
		ex = x
	end
	def my_method(param1)
		#does something
		returns 5 * param1
	end
end

class MySecondClass < MyClass
	def initialize(x, y)
		super(x) #because of () your are getting the instructions from the parentclass(MyClass)
		ey= y
	end
	def my_method(param1)     #it can overwrite the method given by MyClass
		i = super #super makes MySecondClass give instructions to MyClass
		5 * i
	end

end
----------------
super
super()
super(...)



