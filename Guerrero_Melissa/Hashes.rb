# .delete(key)
	g = {:first_name => "Wonder", :last_name => "Woman"}
	g.delete(:last_name);
	puts g
{:first_name=>"Wonder"}

# .empty?
	m = {}
	m.empty?
true

# .has_key?(key)
	j = {:first_name => "Jacobi", :last_name => "Gillette"}
	j.has_key?(:height) <-- must include : to denote key
false

# .has_value?(value)
	m = {:first_name => "Miranda", :last_name => "Gillette"}
	m.has_value?('Miranda') <-- have to put value as string literal to return True
true