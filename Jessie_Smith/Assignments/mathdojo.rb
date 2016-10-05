class MathDojo
	def initialize 
		@result = 0 
	end
	def result
		@result
	end
	def add(*args)
		args.each{ |a| @result += a } 
		return self 
	end
	def subtract(*args)
		args.each{ |a| @result -= a }
		return self
	end
end

puts MathDojo.new.add(2).add(2,5).subtract(3,2).result

