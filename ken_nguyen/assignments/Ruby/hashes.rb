#hashes assignment

# .delete(key) => deletes and returns a value associated with the key

# j = {"a"=>70, "b"=>100}
# puts j.delete("a") #deletes and returns a
# puts j.delete("a"){|el| "#{el} not found"}

# .empty? => returns true if hash contains no key-value pairs

# j = {"a":70, "b":100}
# puts j.empty?
# k = {}
# puts k.empty?

# j = {"a"=>70, "b"=>100}
# puts j["b"]
#weirdd, hashes "=>" vs. :symbol

# .has_key?(key) => true or false
# j = {:a => 70, :b =>100}
# puts j.has_key?(:a)

# .has_value?(value) => true or false
# j = {:a => 70, :b =>100}
# puts j.has_value?("70") #false, "70" !== 70
