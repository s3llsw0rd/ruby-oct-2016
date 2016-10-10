require_relative 'wizard'
RSpec.describe Wizard do

	describe 'defaults' do
		before do
			@tw = Wizard.new
		end
		it 'has a default health of 50' do
			expect(@tw.health).to eq(50)
		end
		it 'has a default intelligence of 25' do
			expect(@tw.intelligence).to eq(25)
		end
	end

	describe 'methods' do
		before do
			@w1 = Wizard.new
			@w2 = Wizard.new
		end

		it 'has a heal method that increases health by 10' do
			@w1.heal
			expect(@w1.health).to eq(60)
		end
		it 'has a fireball method that takes a target and decreases target\'s health by 20' do
			@w1.fireball(@w2)
			expect(@w2.health).to eq(30)
		end
	end
		
end
