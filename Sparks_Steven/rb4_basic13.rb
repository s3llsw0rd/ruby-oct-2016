# BASIC 13

# Print 1-255
# Write a program (sets of instructions) that would print all the numbers from 1 to 255.
(1..255).each{|n|print n}

# Print odd 1-255
# Write a program (sets of instructions) that would print all the odd numbers from 1 to 255.
	# 255.times do |n| 
	# 	next if n % 2 ==0 
	# 	puts n 
	# end
(1..255).reject{ |i| i % 2 == 0 }

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far.
sum = 0
for x in 0..255
	sum = sum + x 
	puts "New number: #{x} Sum: #{sum}" 		
end	

# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.  Being able to loop through each member of the array is extremely important.
x=[1,3,5,7,9,13]
x.each{|x| puts x}

# Find Max
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
x=[-7,-3,-5,1,0,12,10,7,5,-9]
x.max

# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a count function with this assignment.
x=[2, 10, 3]
(x.reduce(:+)/x.count)

# Aray with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255]
(1..255).reject{ |i| i % 2 == 0 }.to_a

# Greater than y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
x=[1, 3, 5, 7]
y=3
x.select{|a| a > y}

# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.  When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
x=[1, 5, 10, -2]
x.map!{|x| x**2}

# Eliminate negative numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.  When the program is done, x should have no negative values, say [1, 5, 10, 0].
[1, 5, 10, -2].map{|a|a>0?a:0}.to_a


# Min, Max, Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array, the minimum value in the array, and the average of the values in the array.
x=[1, 5, 10, -2]
def MMA(x)
	puts x.max
	puts x.min
	y= Float x.reduce(:+)
	z= x.count
	puts z
end
MMA(x)

# Shifting the values in the array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.  For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
x=[1, 5, 10, 7, -2]
x.shift
x.push(0)

# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.  For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].
[-1, -3, 2].map{|a|a>0?a:"Dojo"}.to_a
