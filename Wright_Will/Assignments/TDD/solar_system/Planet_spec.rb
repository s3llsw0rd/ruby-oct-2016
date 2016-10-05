require_relative 'Planet'
RSpec.describe Planet do
    it "Should have a name" do
        the_name = "foo"
        the_desc = "bar"
        p = Planet.new(the_name,the_desc)
        expect(p.name).to eq(the_name)
    end
    it "Should have a desc" do
        the_name = "foo"
        the_desc = "bar"
        p = Planet.new(the_name,the_desc)
        expect(p.description).to eq(the_desc)
    end
    it "Should have a name" do
        the_name = "foo"
        the_desc = "bar"
        p = Planet.new(the_name,the_desc)
        expect(p.population).to eq(0)
    end

end
