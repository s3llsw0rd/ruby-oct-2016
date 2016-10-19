h={:Food=>'Chicken',:Drink=>'Coke',:App=>'Salad',:Dessert=>'IceCream'}
h.delete(:Dessert);print h
puts ""
puts h.empty?
puts h.has_key?(:Drink)
puts h.has_value?('Coke')