
class Queue
    def initialize
        @head = nil
        @tail = nil
        self
    end
    def push val
        if @tail != nil
            @tail.next = Item.new val
            @tail = @tail.next
        else
            @tail = Item.new val
            @head = @tail
        end
        self
    end
    def pop
        return nil if @head == nil
        out = @head.val
        @head = @head.next
        out
    end
    def data_store
        n = @head
        while n.class == Item
            print n.val
            n = n.next
        end
    end
    def back
        return 0 unless @tail
        @tail.val
    end
end

class Item
    attr_accessor :val, :next
    def initialize val
        @next = nil
        @val = val
        self
    end
end

que = Queue.new
que.push(1).push(2).push(3)
puts que.pop
que.push(4)
puts que.pop
que.data_store
#still need to add max and min... will come back to this
