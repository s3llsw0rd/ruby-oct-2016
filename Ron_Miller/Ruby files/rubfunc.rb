
 x=[3,5,1,2,7,9,8,13,25,32]
 #def puz1(x)
 #  puts x.inject{|sum,i|sum+i}.to_f
 #  return x.delete_if{|i| i<10} 
 #end
 #print puz1(x)
y=['John','KB','Oliver','Cory','Matthew','Christopher']
#def puz2(x)
 # puts x.shuffle.to_s
 # x.delete_if{|i| i.length<5}
 # print x
#end
#puz2(y)
z=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
#def puz3(x)
#  x.shuffle
#  puts x.last
#  puts x.first
#  puts "Its a vowel" if x.first == 'a' or x.first == 'e' or x.first == 'i' or x.first == 'o' or x.first == 'u'
#end
#puz3(z)
a=[]
#b=Random.new
###a.push(b.rand(55..100))
#end
#d=[]
#e=Random.new
#for j in 0..9
#d.push(e.rand(55..100))
#end
#puts d.sort
#puts d.min
#puts d.max
#  rst=""
#for k in 0..4
 # rst+=(65+rand(26)).chr.to_s
#end
#puts rst
  r=[]
for m in 0..9
   rst=""
  for k in 0..4
    rst+=(65+rand(26)).chr.to_s
  end
  r.push(rst)
end
puts r.to_s