#arrays assignment

#.at
a = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

#puts a.at(1)

#.fetch
#puts a.fetch(100){|i| i*2}

#.delete
#puts a.delete('p') #removed in place
#deletes value 'p' (delete_at takes in the index as an argument rather than look for the value)

#.reverse (also has reverse!)
#puts a.reverse

#.length
#puts a.length

#.sort
# b = [0, 2, 5, 1, 36, 85, 0]
  #made array of fixnum types, %w would have made an array of strings(not fixnums)
# puts b.sort

#.slice
# puts a.slice(14)
# puts a.slice(4, 7)   from index 4, up to length of 7
# puts a.slice(4..7)  from index 4 to 7

#.shuffle
# c = %w(p ko lo zo mo fosho yo happy hippie pie boat nautical map island)
# puts c.shuffle
#also has shuffle! bang bang

#.join
# d = %w(pie in the sky tonite)
# puts d.join("$")

#.insert
# e = %w(0 1 2 3 4 5 6 7)
# puts e.insert(4, 99)
#inserts in place, not a new array


#.values_at()
# f = %w(0 1 2 3 4 5 6 7)
# puts f.values_at(2...7)
# puts f.values_at(2,4,6) #those specific indeces, not length like in slice
#new array
