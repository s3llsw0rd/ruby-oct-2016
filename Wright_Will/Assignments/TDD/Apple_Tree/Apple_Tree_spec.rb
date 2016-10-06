require_relative "Apple_Tree"
RSpec.describe Apple_Tree do
    it "should have a height" do
        expect(Apple_Tree.new.height).to eq(1)
    end
    it "should have a age" do
        expect(Apple_Tree.new.age).to eq(0)
    end
    it "should have an apple_count" do
        expect(Apple_Tree.new.apple_count).to eq(0)
    end
    it "should have an year_gone method that ages the tree and changes the height" do
        expect(Apple_Tree.new.year_gone.age).not_to eq(Apple_Tree.new.age)

        expect(Apple_Tree.new.year_gone.height).not_to eq(Apple_Tree.new.height)
    end
    it "should grow apples for 3 years" do
        tree = Apple_Tree.new
        tree.year_gone
        expect(tree.apple_count).to eq(0)
        tree.year_gone
        expect(tree.apple_count).to eq(0)
        tree.year_gone
        expect(tree.apple_count).to eq(0)
        tree.year_gone
        expect(tree.apple_count).not_to eq(0)


    end
    it "should have method pick apples that removes apples from the tree" do
        tree = Apple_Tree.new
        tree.year_gone.year_gone.year_gone.year_gone.year_gone
        expect(tree.apple_count).not_to eq(0)
        tree.pick_apples
        expect(tree.apple_count).to eq(0)
    end
    it "should decay after 10 years" do
        tree = Apple_Tree.new
        tree.year_gone.year_gone.year_gone.year_gone.year_gone
        tree.year_gone.year_gone.year_gone.year_gone.year_gone
        lastyear = tree.height
        tree.year_gone
        expect(lastyear > tree.height).to eq(true)
    end

end
