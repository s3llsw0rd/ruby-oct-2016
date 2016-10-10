#wizard spec
require_relative 'wizard'
RSpec.describe Wizard do

  before :each do
    @lupin = Wizard.new
  end

  it "has default health of 50 and intelligence of 25" do
    expect(@lupin.health).to eql(50)
    expect(@lupin.intelligence).to eql(25)
  end

  it "has a heal method that increases health by 10" do
    expect(@lupin.heal.health).to eql(60)
  end

  it "has an ancestor chain that includes Human" do
    expect(@lupin.class.ancestors).to include(Human)
  end

  it "has a fireball method that attacks and object and reduce object's health" do
    snape = Wizard.new
    @lupin.fireball(snape)
    expect(snape.health).to eql(30)
  end
end
