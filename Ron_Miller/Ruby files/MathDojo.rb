class MathDojo
  attr_accessor :total
  def initialize
    @total=0
  end
  def add(*args)
    if args[0].class==Array
      for i in 0..args.length-1
        @total+=args[i].inject(0){|sum,x| sum + x }
      end  
    else
      @total+=args.inject(0){|sum,x| sum + x }
    end
   return self  
  end
  def subtract(*args)
    if args[0].class==Array
      for i in 0..args.length-1
        @total-=args[i].inject(0){|sum,x| sum + x } 
       end
    else
      @total-=args.inject(0){|sum,x| sum + x }
    end
    return self
  end
end


Ron =MathDojo.new

Ron.add(1).add([3,5,7,8],[2,4.3,1.25]).subtract([2,3],[1.1,2.3])
puts Ron.total
