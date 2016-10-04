class MathDojo
    attr_accessor :result
    def initialize()
        @result = 0
        self
    end
    def add(*args)
        @result += args[0] if args.count == 1 and not args[0].is_a? Array
        args[0].each{|n| self.add(n) } if args.count == 1 and args[0].is_a? Array
        args.each{|n| self.add(n) } if args.count > 1
        self
    end
    def sub(*args)
        @result -= args[0] if args.count == 1 and not args[0].is_a? Array
        args[0].each{|n| self.sub(n) } if args.count == 1 and args[0].is_a? Array
        args.each{|n| self.sub(n) } if args.count > 1
        self
    end
end

puts MathDojo.new().add([1,[1,3]],1,3,[1],[1,2]).sub(1,2,[1,1]).result
