require 'spec_helper'
RSpec.describe Ninja do 
	
	before do
		@test = Ninja.create(name:'Shinjo', description:'Shinjo is an okinawan master of the Uechi-ryu style of martial arts. Ninjas are Western fairy tales.')
	end

	it 'should require a name' do
		noname = Ninja.new(description:'blah blah blah testing')
		expect(noname).to be_invalid
	end

	it 'should require a description' do
		nodesc = Ninja.new(name:'tester')
		expect(nodesc).to be_invalid
	end

end