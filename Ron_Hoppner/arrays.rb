puts wsp = ["JB", "Jimmy", "Schools", "JoJo", "Duane", "Sunny", "Todd"]

puts "-------------------------------"
puts "wsp.at(4) = " + wsp.at(4)
puts "-------------------------------"
puts "wsp.fetch(1) = " + wsp.fetch(1)
puts "-------------------------------"
puts "wsp.fetch(-2) = " + wsp.fetch(-2)
puts "-------------------------------"
puts "wsp.delete(Todd) = " + wsp.delete("Todd")
puts "-------------------------------"
puts wsp
puts "-------------------------------"
puts wsp.delete("George") {"not found"}
puts "-------------------------------"
puts wsp.reverse
puts "-------------------------------"
puts wsp.length
puts "-------------------------------"
puts wsp.sort
puts "-------------------------------"
puts wsp.sort { |a,b| b <=> a}
puts "-------------------------------"
puts wsp[1] + wsp[2]
puts "-------------------------------"
#puts wsp.shuffle
puts "-------------------------------"
puts wsp.join(" ")
puts wsp.join
puts "-------------------------------"
puts wsp.insert(-1, "30 years")
puts "-------------------------------"

wspguitar = wsp.values_at(0, 1)
puts wspguitar
