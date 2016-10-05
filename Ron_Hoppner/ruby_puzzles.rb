def arrayThings
	arr = [3,5,1,2,7,9,8,13,25,32]
	sum = arr.reduce(:+)
	x = arr.find_all { |i| i > 10}
	puts sum
	puts x
end
arrayThings

def nameArray
	arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
	puts arr.shuffle
	puts "-------------------" # output readability
	puts arr.find_all {|ele| ele.length > 5}
end
nameArray

def alphabetArray
	arr = ("a".."z").to_a
	arr = arr.shuffle
	vowels = ["a", "e", "i", "o", "u"]
	puts array_first = arr[0]
	puts array_last = arr[-1]
end
alphabetArray

random_array = Array.new
10.times { random_array.push(rand(55..100)) }
puts random_array

puts "-------------------"

puts random_array.min
puts random_array.max

random_string = [*('a'..'z')].sample(5).join
puts random_string

puts "-------------------"

random_big_string = Array.new 
count = 1
begin
	random_big_string.push [*('a'..'z')].sample(5).join
	count += 1
end while count < 11
puts random_big_string
puts random_big_string.class