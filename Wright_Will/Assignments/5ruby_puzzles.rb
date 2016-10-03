# # puzzle 1
# arr = [3,5,1,2,7,9,8,13,25,32]
# def puz1(arry)
#     puts arry.reduce(0, :+)
#     return arry.find_all{|n| n > 10}
# end
# puts puz1(arr).inspect
#
# #puzzle 2
# arr2 = %w(John Oliver Cory Matthew Christopher)
# puts arr2.inspect
# def puz2(arry)
#     arry.shuffle!
#     arry.each{|strng| puts strng }
#     return arry.find_all{|strng| strng.length > 5}
# end
# puts puz2(arr2).inspect
#
# #puzzle 3
# arr3 = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
# def puz3(arry)
#     arry.shuffle!
#     puts arry.last
#     puts arry.first
#     puts "this is a vowel" if %w(a e i o u).include?(arry.first)
# end
# puz3(arr3)
#
# # #puzzle 4
# arr4 = (0...10).to_a.map{|n| rand(55...100)}
# puts arr4.inspect

# # puzzle 5
# arr5 = (0...10).to_a.map{|n| rand(55...100)}.sort
# puts arr5
# puts arr5.min
# puts arr5.max
# puts arr5.inspect

#puzzle 6

puts (0...5).map{(65 + rand(26)).chr}.join("").downcase
# puzzle 7
print (0...10).map{(0...5).map{(65 + rand(26)).chr}.join("").downcase}
