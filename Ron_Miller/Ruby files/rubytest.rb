puts ["ant", "bear", "cat"].any? {|word| word.length >= 3}
["ant", "bear", "cat"].each {|word| print word, "--"}
puts (1..4).collect {|i| i*i}
puts (1..6).collect {|f| f*f}
puts (1..100).detect {|i| i%5==0 and i%7==0} 
puts (1..100).find_all {|i| i%5==0 and i%7==0}
puts (1..10).reject {|i| i%3==0}
5.upto(10) { |i| print i, "Butts "}
x=[1,2,3,4,5,6,7,8,9,0]
puts x.member?(3)
puts x.include?(11)
puts x.last
puts x.max
puts x.min