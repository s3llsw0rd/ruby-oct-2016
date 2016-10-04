# 1-255
# 1.upto(255) { |i| print i, " " }

# 1-255 odd
# print (1..255).find_all { |i| i%2 != 0 }

# 1-255 and sum
# x = 0; (1..255).each {|i| x=x+i; print "number: "+i.to_s+" sum: "+x.to_s+"\n" }

# iterate array
# [1,3,5,7,9,13].each {|i| puts i}

# Find Max
# print [-3,-5,-7,0,5,2,-10].max
#  or this...
=begin 
arr1 = [-3,-5,7,0,5,2,-10]
def findMax (arr)
	max = arr[0]
	arr.each {|i| if i > max; max = i; end }
	print max
end
findMax(arr1) 
=end

# Get Average
=begin
arr2 = [3,-5,9,2,8]
count = 0
sum = 0
arr2.each { |i| count=count+1; sum=sum+i }
print sum/count
=end

# Array with odd numbers
# y = (1..255).find_all { |i| i%2 != 0 }

# Greater than Y
=begin
def findGreater (arr, y)
	print arr.find_all { |i| i > y}
end
findGreater([-1,3,6,4,-5,2,-8], 3)
=end

# Square the vals
=begin
def square (x)
	x.each_index {|i| x[i] = x[i]*x[i]}
	print x
end
square([2,3,-2])
=end

# no negatives
=begin
def noNeg (x)
	x.each_index {|i| if x[i] < 0; x[i] = 0; end }
	print x
end
noNeg([-2,3,5,-6,9,0,4,-3])
=end

# Max, min, avg
=begin
def maxMinAvg (x)
	max = x.max
	min = x.min
	avg = x.inject {|sum, n| sum + n }.to_f / x.size
	print "max: "+max.to_s+" min: "+min.to_s+" avg: "+avg.to_s
end
maxMinAvg([1,5,10,-2])
=end

# Shift
=begin
def shift (arr)
	arr.each_index {|i| if i < arr.size-1; arr[i] = arr[i+1]; else arr[i] = 0; end }
	print arr
end
shift([1,5,10,7,-2])
=end

# num to str
=begin
def toDojo (arr)
	arr.each_index {|i| if arr[i] < 0; arr[i] = "dojo"; end}
	print arr
end
toDojo([-1,-3,2])
=end

