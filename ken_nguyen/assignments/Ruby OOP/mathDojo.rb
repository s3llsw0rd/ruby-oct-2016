#MathDojo

class MathDojo
  attr_accessor :result

  def initialize
    @result = 0
    self
  end

  def add(*val)
    for i in val
      if i.class == Fixnum
        @result += i
      end
      if i.class == Array
        for j in i
          @result += j
        end
      end
    end
    self
  end

  def subtract(*val)
    for i in val
      if i.class == Fixnum
        @result -= i
      end
      if i.class == Array
        for j in i
          @result -= j
        end
      end
    end
    self
  end

  def result
    puts @result
    self
  end
end

MathDojo.new.add(2).add(2,5).subtract(3,2).result
MathDojo.new.add(1).add([3,5,7,8],[2,4.3,1.25]).subtract([2,3],[1.1,2.3]).result
