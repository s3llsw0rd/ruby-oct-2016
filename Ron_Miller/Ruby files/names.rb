a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]
puts "You have "+ names.length.to_s+" names in the 'names' array"
for i in 0..names.length-1
puts "The name is "+ names[i][:first_name]+" "+names[i][:last_name]
    
end