x = [3,5,1,2,7,9,8,13,25,32]

def one(arr) 
	puts arr.reduce(:+)
	arr.reject{|i| i>10}
end

y = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
def two(arr)
	puts arr.shuffle
	arr.select{|i| i.length>5}
end

$vowels = ['a','e','i','o','u']
alphabets = ('a'..'z').to_a

def shuffleArray(arr)
	arr.shuffle!
	puts arr.first, arr.last
	puts "first letter is vowel" if $vowels.include?(arr.first) 
end

randArray = Array.new(10){rand(55..100)}
puts randArray.sort! ,'---------------' ,randArray.first,  randArray.min, randArray.max

randString = (0...5).map { (65 + rand(26)).chr }.join
puts randString
stringArray = Array.new(10).map{(0...5).map { (65 + rand(26)).chr }.join}
puts stringArray