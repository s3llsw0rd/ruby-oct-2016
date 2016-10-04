x = [0,1,2,3,4,5,6]

puts x.at(3)
puts x.fetch(4)
x.delete(2)
puts x
puts x.reverse
puts x.length
puts x.sort
puts x.sort.reverse
puts x.slice(1..3)

puts x.shuffle
puts x.join('.')
x.insert(-3,'a','b','c')
puts x.values_at(2..4,5..6)