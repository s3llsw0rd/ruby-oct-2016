def add(num,*args)
    @sum = num
    if args.any?
        args.map { |num| @sum += num }
    end
    puts @sum
    @sum
end
#add(2,1,5)


class MathDojo
    attr_accessor :result
    def initialize
        @result = 0
    end

    def add(num,*args)

        @sum = num.kind_of?(Array) ? @sum = num.reduce(:+) : @sum = num
        if args.any?
            args.each { |ele| ele.kind_of?(Array) ? @sum += ele.reduce(:+) : @sum += ele}
        end
        @result += @sum
        puts "result of add is: #{self.result}"
        return self
    end

    def sub(num,*args)
        @sum = num.kind_of?(Array) ? @sum = num.reduce(:+) : @sum = num
        if args.any?
            args.each { |ele| ele.kind_of?(Array) ? @sum += ele.reduce(:+) : @sum += ele}
        end
        @result -= @sum
        puts "result of sub is: #{self.result}"
        return self
    end

end

a = MathDojo.new
#a.add(1,2,3).add(1).sub(1).sub(1,1).sub(1,1,2)
a.add(1,[1,2,4]).sub([1,2,3],4)
