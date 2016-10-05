# Print 1-255
# puts (1..255).to_a

# Print 1-255 odd
# puts (1..255).select(&:odd?)

# Print Sum
# sum = 0
# num = 0
# begin
# 	puts "New Number = " + num.to_s + " Sum = " + sum.to_s
# 	num += 1
# 	sum = sum + num
# end while num < 256

# Iterate Through Array
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr.each { |val| puts val }

# # Find Max
# puts arr.max

# # Get Average
# puts arr.reduce(:+) / arr.length

# Odd Array
# def oddArray
# 	 y = (1..255).to_a
# 	 y.delete_if {|val| val % 2 == 0}
# 	 puts y
# end
# oddArray

# Greater Than Y
# def greaterThan(arr, x)
# 	count = arr.find_all { |i| i > x}
# 	puts count.length
# end
# greaterThan([1,2,3,4,5,6], 3)

# Square Values
# def square(arr)
# 	squared = arr.collect {|i| i*i}
# 	puts squared
# end
# square([2,4,6])

# Eliminate Negatives
# def eliminateNegatives(arr)
# 	arr.delete_if {|val| val < 0}
# 	puts arr
# end
# eliminateNegatives([-1,1,2])

# Min Max Avg
# def minMaxAvg(arr)
# 	x = []
# 	x.push(arr.min, arr.max, (arr.reduce(:+)/arr.length))
# 	puts x
# end
# minMaxAvg([2,4,6])

# Shifting
# def shift(arr)
# 	arr.shift
# 	arr.push(0)
# 	puts arr
# end
# shift([2,4,5,6])

# Number to String
# arr = [-1,2,3,4-5]
# arr.each { |x| if x>0 then puts x else puts 'Dojo' end }
