#print 1 -255
# for i in 1..255
#     puts i
# end
# # print odd numbers between 1 -255
# for i in 1..255
#     puts i  if i.even?
# end
# # print sum 0 - 255
# sum = 0
# for i in 0..255
#     sum = sum + i
#     puts "New number: #{i} Sum: #{sum}"
# end
# # print each in array
arr = [1,3,5,7,9,13]
arr2 = [-5,4,1,7,-2]
# puts arr.inspect
#
# # arr.each{ |n| puts n}
#
# puts arr.max
# puts arr.reduce(0, :+) / arr.count
# puts (1..255).to_a.reject{|n| n % 2 == 0}.inspect
# def moreThan(arr,y)
#     return arr.reject{|n| n <= y}
# end
# puts moreThan(arr,5).inspect
#
# puts arr.map{|n| n*n}.inspect
# puts arr2.reject{|n| n < 0}.inspect
# def maxMinAvg(arr)
#     puts arr.max
#     puts arr.min
#     puts (arr.reduce(0, :+) /arr.count)
# end
# puts maxMinAvg(arr)

# puts arr2.slice(0,arr2.length-1).concat([0]).inspect

puts [-1,-3,3].map{|n| n > 0 ? n : "Dojo" }.inspect
