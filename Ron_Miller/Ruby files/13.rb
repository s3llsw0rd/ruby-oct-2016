#(1..255).find_all{|i| puts i}
#puts (1..255).find_all {|i|i%2==1}
#(0..255).each{|i| puts "New Number"+i.to_s+" Sum " + ((i*(i+1))/2).to_s}
testArr=[-22,1,3,5,7,9,13]
#testArr.each{|i| puts i}
#puts testArr.max
##puts testArr.inject{|sum,i|sum+i}.to_f/testArr.length
#print (1..255).find_all{|i|i%2==1}.to_a
# def greater(y,x)
#  print y.find_all{|i| i>=x}
#end
#greater(testArr,4)
#def dbl(x)
# print x.map{|i| i*i}
#end
#print dbl(testArr)
#def max(m)
#  print m.max
#end
#max(testArr)
#def neg(x)
#  x.delete_if{|i| i<0}
#  print x
#end
#neg(testArr)
#def mma(x)
 # y=[]
 # y.push(x.max)
 # y.push(x.min)
 # y.push(x.inject{|sum,i|sum+i}.to_f/x.length)
#end
#print mma(testArr)
#def shift(x)
 # x.shift
#  x.push(0)
#end
#print shift(testArr) 
#def negString(x)
#  x.map! {|i| i<0 ? 'coding':i}
#end
#print negString(testArr)