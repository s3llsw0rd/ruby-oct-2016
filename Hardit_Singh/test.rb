class MathDojo
    attr_accessor :result
    def initialze()
        @result = 0
        self
    end
    def add(*args)
        @result += args[0] if args.count == 1
        args.each{|n| self.add(n) } if args.count > 1
        self
    end
end

MathDojo.new.add([1])