# Develop a ruby class called MathDojo that has the following functions: add, subtract. Have these 2 functions take at least 1 parameter. MathDojo.new.add(2).add(2, 5).subtract(3, 2).result should perform 0+2+(2+5)-(3+2) and return 4.
#  Modify MathDojo to take an array as a parameter with as many values passed into the array as needed. (e.g. MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result should do 0+1+(3+5+7+8)+(2+4.3+1.25)-(2+3)-(1.1+2.3) and return its result.

# class MathDojo
# 	attr_reader :result
# 	def initialize
# 		@result=0
# 	end
# 	def add(*num)
# 		num.each{|x| @result += x}
# 		self
# 	end
# 	def subtract(*num)
# 		num.each{|x| @result -= x}
# 		self
# 	end
# end
# puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result

# ||||||

class MathDojo
	attr_accessor :result

	def initialize
		@result = 0
	end

	def add(*arg)
		if arg.class == Array
			@result += arg.flatten.reduce(:+)
		else
			@result += arg
		end
		self
	end

	def subtract(*arg)
		if arg.class == Array
			@result -= arg.flatten.reduce(:+)
		else
			@result -= arg
		end
		self
	end
end
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result