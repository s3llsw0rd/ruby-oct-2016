#basic 13 algorithms

#print 1-255
# (1..255).each{|i|print i," "}

#print odd numbers between 1-255
# (1..255).each{|i| print i," " if i%2==1}

#print sum
# sum = 0
# for i in 0..255
#   sum+=i
#   puts "New Number: #{i} Sum: #{sum}"
# end

#iterating through an array
# def ittarr(x)
#   x.each{|i| print i,"$"}
# end
#
# x = [1,3,5,7,9,13]
# ittarr(x)

#Find Max
# def max(x)
#   puts x.max
# end
#
# x = [1,3,5,7,9,13]
# y = [-3,-5,-7]
# max(y)

#Get Average
# def avg(x)
#   puts x.reduce{|sum, i|sum+i}/x.length.to_f
# end
# #or puts x.inject(0){|sum,i|sum+i}/x.length.to_f
#
# x = [1,3,5,7,9,13,-7]
# # x = [2,4,6,8]
# avg(x)

#array with odd numbers
# def oddArr(x)
#   puts x.select{|i| i % 2 == 1}
# end
# x = (1..255)
# oddArr(x)

#Greater than y
# def greaterThanY(x,y)
#   puts x.count{|i| i > y}
# end
# x = [1,2,3.4,5,7,8,9,20,52,66,45]
# greaterThanY(x,3)

#Square the values
# def sqrArr(x)
#   puts x.map!{ |i| i*i }
# end
# x = [1,5,10,-2]
# sqrArr(x)

#Eliminate Negative numbers
# def elimNeg(x)
#   puts x.map!{ |i| i < 0 ? 0 : i }
# end
# x = [1,5,10,-2,-10,8,100,-5]
# elimNeg(x)

#Min, Max, Avg
# def minMaxAvg(x)
#   puts x.max
#   puts x.min
#   puts x.inject(0.0){|memo, i| memo+i}/x.size
# end
# x = [1,5,10,-2]
# minMaxAvg(x)

#shifting the values in the array
# def shift(x)
#   x.shift
#   puts x << 0
# end
# x = [1,5,10,7,-2]
# shift(x)

#number to string
# def numToStr(x)
#   puts x.map! { |i| i < 0 ? "Dojo" : i }
# end
# x = [-1,-3,2]
# numToStr(x)
