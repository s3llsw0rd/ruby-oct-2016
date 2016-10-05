class MathDojo
	attr_reader :sum
	def initialize
		@sum = 0
	end
	def add *args
		args.each do |i|
			if i.class == Fixnum
				@sum += i
			elsif i.class == Array
				i.each {|j| add(j)}  # recursion ftw!
			end
		end
		self
	end
	def subtract *args
		args.each do |i|
			if i.class == Fixnum
				@sum -= i
			elsif i.class == Array
				i.each {|j| subtract(j)}
			end
		end
		self
	end
	def result
		puts @sum
	end
end

MathDojo.new.add(2).add(2,5).subtract(3,2).result
MathDojo.new.add(1).add([3, [5, 7], 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
