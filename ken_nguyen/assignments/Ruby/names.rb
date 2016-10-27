#names

a = { :first_name => "Michael", :last_name => "Choi" }
b = { :first_name => "John", :last_name => "Supsupin" }
c = { :first_name => "KB", :last_name => "Tonel" }
d = { :first_name => "Jessie", :last_name => "De Leon" }
e = { :first_name => "Jaybee", :last_name => "Balog" }
names = [a, b, c, d, e]

def names_(names)
  out = ["You got #{names.size} names in the 'names' array"]
  names.each do |n|
    out << "The name is '%s %s'" % [n[:first_name], n[:last_name]]
  end
  puts out
end

names_(names)
