class MoneyMaker
	def self.farm
		if (rand(1..20) == 1)
  			newgain = rand(-30..-10)
  			record = "A tornado hit the farm! You lose #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
  			tag = "danger"
  		else
	  		newgain = rand(10..20)
	  	end
	  	{ newgain: newgain, record: record, tag: tag }
  	end
  	def self.cave
  		if (rand(1..20) == 1)
  			newgain = rand(-20..-5)
  			record = "They had a cave troll! You lose #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
  			tag = "danger"
  		else
	  		newgain = rand(5..10)
	  	end
	  	{ newgain: newgain, record: record, tag: tag }
  	end
  	def self.house
  		if (rand(1..20) == 1)
  			newgain = rand(-10..-2)
  			record = "Instead of working, you fell asleep on the couch! You lose #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
  			tag = "danger"
  		else
	  		newgain = rand(2..5)
	  	end
	  	{ newgain: newgain, record: record, tag: tag }
  	end
  	def self.casino
  		case rand(1..20)
  		when 1
  			newgain = rand(-100..-50)
  			record = "You went on tilt at the poker table! You lose #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
  			tag = "danger"
  		when 2..12
	  		newgain = rand(-50..0)
	  		record = "The house always wins. You lose #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
	  		tag = "danger"
  		when 13..19
  			newgain = rand(0..30)
	  		record = "Against the odds, you come out ahead! You gain #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
	  		tag = "success"
  		when 20
  			newgain = rand(30..100)
	  		record = "Wow! Better get out before security closes in. You gain #{newgain.to_s} golds. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p")
	  		tag = "success"
	  	end
	  	{ newgain: newgain, record: record, tag: tag }
  	end
end