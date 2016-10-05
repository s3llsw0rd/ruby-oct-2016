require_relative "Queue"

RSpec.describe Queue do
    it "has attribute Data_store" do
        que = Queue.new.push(1).push(2).push(3)
        que.data_store
    end
    it "has attribute back" do
        que = Queue.new
        expect(que.back).to eq(0)
        que.push(1)
        expect(que.back).to eq(1)
        que.push(2)
        expect(que.back).to eq(2)
    end
    it "has pop method which removes value to front of Queue" do
        que = Queue.new
        que.push(1).push(2)
        expect(que.pop).to eq(1)
        expect(que.pop).to eq(2)
        expect(que.pop).to eq(nil)
    end
    it "has push method which adds a value to the top of the Queue" do
        que2 = Queue.new
        que2.push(1)
        expect(que2.pop).to eq(1)
        que2.push(2)

    end
end
