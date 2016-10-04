h = {"first_name" => "busy", "last_name" => "work", "blah" => "blahblahblah", "thoughts" => "'=>': why?"}
g = {first_name: "Much", last_name: "Better", thoughts: "why would anyone use '=>'?"}

print h["first_name"], h["last_name"]
print "\n"
print g[:first_name], g[:last_name]
print "\n"

puts h.has_key?("blah")
puts h.delete("blah")
puts g.has_value?("Better")
puts h.empty?

