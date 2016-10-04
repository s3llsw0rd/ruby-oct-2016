#names
a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]



def print_names(arry)
    puts "You got #{arry.count} names in the \'names\' array"
    arry.each{|person| puts "The name is \'#{person[:first_name]} #{person[:last_name]}\'"}
end

print_names(names)
