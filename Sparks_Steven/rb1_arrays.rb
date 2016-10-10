# ARRAYS
# arr=[1,2,3,4,5,6,7,8,9]
arr=["e","d","a","b","c","f"]
# .at or .fetch
# .delete
# .reverse
# .length
# .sort
# .slice
# .shuffle
# .join
# .insert
# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

# puts arr.at(-2)
	# will return nil if out of bounds
	# negative array will return the locations from the end
# puts arr .fetch(-2)
	# will return error if out of bounds, unless you set a default value or supply code 
	# a.fetch(100) { |i| puts "#{i} is out of bounds" }
# puts arr.delete (6)
	# Deletes all items from self that are equal to obj.
	# Returns the last deleted item, or nil if no matching item is found.
# puts arr .reverse
	# Returns a new array containing self‘s elements in reverse order
# puts arr .length
	# Returns the number of elements in self. May be zero.
# puts arr .sort
# puts arr .sort {|x,y| y<=>x}
	# Comparisons for the sort will be done using the <=> operator or using an optional code block.
# puts arr[4] + arr[2] + arr[3]
# 	slices out "cab" from the letter array above
# puts arr .shuffle
# 	Returns a new array with elements of self shuffled.
# puts arr .join
# 	squashed letter array all together edabcf
# puts arr .join("-")
# 	returned e-d-a-b-c-f
# puts arr .insert(2,99).join("-")
# 	e-d-99-a-b-c-f
# puts arr .insert(-2,1,2,3).join("-")
# 	e-d-a-b-c-1-2-3-f
# puts arr .values_at(1,3,5).join(" and ")
# 	d and b and f