class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end
​
class HourlyEmployee < Employee
    attr_accessor :name
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
​
    def calculate_salary
    	@hourly_rate * @hours_worked
    end
end
​
class SalaryEmployee < Employee
    attr_accessor :name
	def initialize (name, email, yearly_salary)
		@name = name
        @email = email
       	@yearly_salary = yearly_salary
	end
	def calculate_salary
		@yearly_salary/52
	end
end
​
class MultiPaymentEmployee < Employee
	attr_accessor :name
    def initialize (name, email, yearly_salary, hourly_rate, hours_worked)
		@name = name
        @email = email
       	@yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
	end
	def calculate_salary
		@yearly_salary/52 + @hours_worked*@hourly_rate	
	end
end
​
josh = HourlyEmployee.new('Josh', 'joshua@hormal.com', 35, 50) 
nizar = SalaryEmployee.new('Nizar', 'nizar@hormal.com', 100000)
ted = MultiPaymentEmployee.new('Ted', 'teddy@hormal.com', 60000, 275, 55)
tristan = HourlyEmployee.new('Tristan', 'tristan@hormal.com', 35, 50)
nacho = HourlyEmployee.new('Nacho', 'nacho@hormal.com', 35, 50)
​
#nizar.calculate_salary
​
employee_array = [josh, nizar, ted, tristan, nacho]
​
​
​
class Payroll
    def initialize (employee)
        @employee = employee
    end
    def pay_employees
        @employee.each do |emp|
            puts "#{emp.name} = #{emp.calculate_salary*0.82}"
        end
    end
​
    def total_payment
        @employee.reduce(0){|emp,x| emp + x.calculate_salary}
    end
    def sent_mail
        @employee.mail  
​
end
​
payroll1 = Payroll.new(employee_array)
payroll1.pay_employees
puts payroll1.total_payment
​