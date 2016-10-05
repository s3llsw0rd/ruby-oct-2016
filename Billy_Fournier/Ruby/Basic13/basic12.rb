a = [1, 5, 10, -2]

def square(arr)
 puts arr.map { |e| e*e  }
end

square(a)

def list(arr)
  puts arr.min, arr.max, arr.inject {|sum,i| sum + i}.to_f/arr.length
end
list(a)

def replace(arr)
  puts
  puts arr.map { |x| x > 0? x=x : x=0}
end
replace(a)
