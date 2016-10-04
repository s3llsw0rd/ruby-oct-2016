
x = {:one => 1, :two =>2,:five=>5}
puts x[:one]
puts x.delete(:five)
puts x.delete(:five)
puts x.empty?
puts x.has_key?(:five)? "x has key five" : "x does not have key five" 
puts x.has_value?(5)? "x has value 5" : "x does not have value 5" 
puts x.has_value?(1)? "x has value 1" : "x does not have value 1"