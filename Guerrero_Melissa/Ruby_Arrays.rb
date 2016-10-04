# .at or .fetch
	frog = ['tadpole', 'pond', 'egg', 'ribbit']
	
	frog.fetch(1)
	frog.fetch(-1)
	frog.fetch(4, 'croak')
	
		 frog.fetch(1)
"pond"
        frog.fetch(-1)
"ribbit"
        frog.fetch(4, 'croak')
"croak"

# .delete
	q = ["q", "u", "e", "e", "n"]

	q.delete("e")
	puts q

	$ ruby Ruby_Arrays.rb
q
u
n

# .reverse
 	[1, 2, 3, 4].reverse
[4, 3, 2, 1]

# .length
	[1, 2, 3, 4].length
4
# .sort
	a = [7, 1, 2, 5, 3, 4]
	a.sort! { |x,y| y<=>x }
	 a.sort! { |7,1| 1<=>7 }
		a.sort! { |x,y| y<=>x }
[7, 5, 4, 3, 2, 1]

# .slice
	v = ["e", "r", "y"]
	v.slice(1)
	puts v
"r"

# .shuffle
	z = [2, 5, 3, 0, 8]
	z.shuffle
	puts z
[0, 2, 8, 5, 3]

# .join
	["d", "o", "g"].join
"dog"

# .insert
	g = %w{ a b c d }
	g.insert(3, 77)
	puts g
["a", "b", "c", 77, "d"]

# values_at()
	a = %w{frog zebra cow}
	puts a.values_at(1,2).join(' and ')
zebra and cow
