# Print 1-255
puts (1..255).to_a

# Print odd int 1-255
puts (1..255).step(2)

# Print sum
count = sum = 1
255.times do 
	count += 1
	sum += count
	puts "sum at " + count.to_s + " = " + sum.to_s
end

# Iterating through an array
x = [1, 3, 5, 7, 9, 13]
puts x.each {|a|}

# Find max
x = [-3, -5, -7]
puts x.max

# Get average
x = [2, 10, 3]
puts x.inject(:+)/x.length

# Array with odd numbers
y = (1..255).step(2).to_a 
puts y

# Greater than y
arr = [1, 5, 10, -2]
y = 3
puts arr.count{|a| a > y}

# Square the values
x = [1, 5, 10, -2]
puts x.map {|a| a ** 2}

# Eliminate negative numbers
x = [1, 5, 10, -2]
puts x.reject{|a| a < 0 }

# Min, max, avg
x = [1, 5, 10, -2]
puts x.min, x.max, x.inject(:+).to_f/x.length

# Shifting values in an array 
x = [1, 5, 10, -2]
x.shift
x.push(0)
print x
















