require_relative "Stack"

RSpec.describe Stack do
    it "has attribute Data_store" do
        stk = Stack.new.push(1).push(2).push(3)
        stk.data_store
    end
    it "has attribute back" do
        stk = Stack.new
        expect(stk.back).to eq(0)
        stk.push(1)
        expect(stk.back).to eq(1)
        stk.push(2)
    end
    it "has pop method which removes value to top of stack" do
        stk = Stack.new
        stk.push(1).push(2)
        expect(stk.pop).to eq(2)
        expect(stk.pop).to eq(1)
        expect(stk.pop).to eq(nil)
    end
    it "has push method which adds a value to the top of the stack" do
        stk = Stack.new
        stk.push(1)
        expect(stk.pop).to eq(1)
        stk.push(2)
        stk.push(3)
        expect(stk.pop).to eq(3)

    end
end
