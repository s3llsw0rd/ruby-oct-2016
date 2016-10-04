
class Stack
    def initialize
        @head = nil
        @tail = nil
        self
    end

    def push val
        @head = Item.new val, @head
        @tail = @head if @tail == nil
        self
    end

    def pop
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
    def last
        @tail
    end
end



class Item
    attr_accessor :val, :next
    def initialize val, nextN
        @next = nextN
        @val = val
        self
    end
end


stk = Stack.new
stk.push(1).push(2).push(3)
stk.pop
stk.data_store
