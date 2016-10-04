x = [1,2,5,3,4]
# Print 1-255
	(1..255).each{|i| print i, " "}
# Print odd numbers between 1-255
	(1..255).each{|i| print i , " " if i%2==1}
# Print Sum
	x = 0
	(0..255).each{|i| puts "New number: #{i} 'Sum:' #{x+=i}"}
	(0..255).each{|i| puts "New number: #{i} Sum: #{(0..i).reduce(:+)}"}
# Iterating through an array
	def pringEach(arr);arr.each{|i| puts i} end
# Find Max
	def findMax(arr); puts arr.max end
# Get Average
	def getAvg(arr); puts arr.reduce(:+)/arr.length end
# Array with Odd Numbers
	def oddArray(s,e); (s..e).reject{|i| i%2==0} end
	puts oddArray(1,255)
#Greater Than y
	def greaterThan(arr,num);  arr.select{|i| i>num} end
	puts greaterThan(x,2)
# Square the values
	def squares(arr); arr.collect!{|i| i*i} end
	squares(x)
	puts x
# Eliminate Negative Numbers
	def eleminateNeg(arr); arr.reject{|i| i<0}
# Max, Min, and Average
	def maxMinAvg(arr); puts arr.max; puts arr.min; puts arr.reduce(:+)/arr.length end
	maxMinAvg(x)
# Shifting the values in the array
	def shiftArray(arr); arr.push(0).shift end
# Replace
	def replaceArr(arr); arr.map{|i| i<0? "Dojo" : i} end
	puts replaceArr([1,-1,0,2,-3])