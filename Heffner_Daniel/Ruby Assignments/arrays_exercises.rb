a = ['a', 'b', 'c', 'd', 'e','f','g']
b = [1, 2, 3, 4, 5, 6, 7]

x = a+b
print x
puts "\n"

puts a.at(0)
puts b.at(4)
puts a.fetch(3, "ha"*3)
puts b.fetch(9) {|i| puts "index #{i} out of bounds!"}
puts x.delete('a')
puts x.delete(7)
print x
y = x.reverse
puts "\nx reversed:"
print y
puts "\nlength = " + x.length.to_s

b.shuffle!
print b
print "\n"
b.sort!
print b
print "\n"

x.shuffle!
print x.slice(0,4)
print "\n"
print x.slice(3..11)
print "\n"
puts a.join('-')

print b.insert(-2, -5, 10,-3,-10,0)
print "\n"

print x.values_at(4,2,6,7,1)
