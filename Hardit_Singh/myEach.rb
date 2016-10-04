module MyEnumerable
	def my_each(&block)
		for i in 0...self.length
			self[i] = block.call(self[i])
		end
	end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i }