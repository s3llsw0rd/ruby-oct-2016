require_relative 'Solar_System'

RSpec.describe Solar_System do
    it "Is initialized with name default is Milky Way" do
        expect(Solar_System.new.name).to eq("Milky Way")
        expect(Solar_System.new("foo").name).to eq("foo")
    end
    it "there should have a count planets method" do
        mw = Solar_System.new
        mw.add_planet("earth","here")
        mw.add_planet("mars",'red')
        expect(mw.count_planets).to eq(2)
    end
    it "should only add planets that are of the planet class" do
        mw =  Solar_System.new
        mw.add_planet("earth","here")
        mw.add_planet("mars",'red')
        mw.all_planets.each { |this_planet|
            expect(this_planet.class).to eq(Planet)
        }
    end
    it 'should have supernova method that destroys all planets' do
        mw =  Solar_System.new
        mw.add_planet("earth","here")
        mw.add_planet("mars",'red')
        mw.supernova
        expect(mw.count_planets).to eq(0)
    end


end
