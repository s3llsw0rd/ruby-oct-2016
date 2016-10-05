wsp = {"JB" => "Vocal", "Jimmy" => "Guitar", "Duane" => "Drums (good)", "Todd" => "Drums (bad)"}

wsp.delete("Todd")

puts wsp

puts wsp.has_key?("Todd")

puts wsp.has_value?("Bass")
