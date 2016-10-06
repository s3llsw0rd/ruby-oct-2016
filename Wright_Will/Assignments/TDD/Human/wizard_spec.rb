require_relative 'Wizard'
RSpec.describe Wizard do
    it "Wizard should have default health of 50" do
        expect(Wizard.new.health).to eq(50)
    end
    it "Wizard should have default inteligence of 50" do
        expect(Wizard.new.inteligence).to eq(25)
    end
    it "Wizard should have a heal method that increases health by 10" do
        w = Wizard.new
        w.health = 1
        w.heal
        expect(w.health).to eq(11)
    end
    it "Wizard should have an ancestor Human" do
        expect(Wizard.new.class.ancestors.include?(Human)).to eq(true)
    end
    it "Wizard should have fireball method that reduces atackee health" do
        w = Wizard.new
        attackee = Wizard.new
        h = attackee.health
        w.fireball(attackee)
        expect(attackee.health < h).to eq(true)
    end

end
