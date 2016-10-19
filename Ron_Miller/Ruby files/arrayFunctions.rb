module ArrayTest
  
  newArr= [1,2,3,4,5]
  newArr2=['a','b','c','d','e','f']
  
  
   puts newArr.delete(5).to_s
   puts newArr.reverse.to_s
   puts newArr.length
   puts newArr.sort.to_s
   puts newArr.slice(1,3)
   newArr2.shuffle
   puts newArr.join("*")
   puts newArr.insert(0,7).to_s
   puts newArr.values_at(0,2)
end