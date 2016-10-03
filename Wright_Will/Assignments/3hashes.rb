myHash = {:hello => "world", :goodbye => "fred", :one => 1}
# puts myHash[:hello]
# puts myHash[:goodbye]
# puts myHash[:one]
puts myHash.delete(:one)
puts myHash.inspect
puts myHash.empty?
puts myHash.has_key?(:one)
puts myHash.has_key?(:hello)
puts myHash.has_value?(1)
puts myHash.has_value?("fred")
