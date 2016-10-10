class Human
	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength=3
		@stealth=3
		@intelligence=3
		@health=100
	end

	def attack(victim) #victim is whatever is passed in as a param: in this case (Bob)
		if victim.class.ancestors.include?(Human)#does the ancestors class include the class human
			victim.health -= 10 #if it includes human, minus 10 pts for health
			return self #need this for keeping track that the minus 10 is for bob
		else
			"I'm an alien"
		end #don't forget to close the if statement, goddangit. You wasted a lot of time on this.
	end
end

Fred = Human.new #make new human(attacker)
Bob = Human.new #make new human(victim)
puts Fred.attack(Bob) #will make bob's health 90. Putting another .attack(Bob) will make his health 80
puts Bob.health #will keep track of the cumulative attacks on bob's health 


