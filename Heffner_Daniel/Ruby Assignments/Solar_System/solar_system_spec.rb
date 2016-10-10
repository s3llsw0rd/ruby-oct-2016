require_relative 'solar_system'
RSpec.describe Solar_System do

	describe 'Planet' do
		before do
			@tp = Planet.new("test", "test description", 90000000000)
		end

		it 'has a name' do
			expect(@tp.name).to eq("test")
		end
		it 'has a description' do
			expect(@tp.description).to eq("test description")
		end
		it 'has a population' do
			expect(@tp.population).to eq(90000000000)
		end
	end

	describe 'Solar_System' do
		before do
			@ss1 = Solar_System.new
			@ss2 = Solar_System.new('Alpha Centauri')
		end
		it 'has a default name of "Sol"' do
			expect(@ss1.name).to eq("Sol")
		end
		it 'can be initialized with a name' do
			expect(@ss2.name).to eq("Alpha Centauri")
		end
		it 'has a list of planets' do
			earth = Planet.new("Earth", "Rocky planet", 4000000000000)
			venus = Planet.new("Venus", "Future home of cloud cities", 0)
			@ss1.add_planet(earth)
			@ss1.add_planet(venus)
			expect(@ss1.planet_list).to eq([earth, venus])
		end
		it 'has a count of how many planets are in a system' do
			test1 = Planet.new("test1", "desc 1", 1)
			test2 = Planet.new("test2", "desc 2", 2)
			test3 = Planet.new("test3", "desc 3", 3)
			@ss2.add_planet(test1)
			@ss2.add_planet(test2)
			@ss2.add_planet(test3)
			expect(@ss2.planet_count).to eq(3)
		end
		it 'has a Super Nova method that destroys all planets' do
			mars = Planet.new('Mars', 'Not the best candidate for colonization that we have, actually', 0)
			@ss1.add_planet(mars)
			@ss1.super_nova
			expect(@ss1.planet_list).to eq([])
			expect(@ss1.planet_count).to eq(0)
		end
	end

end
