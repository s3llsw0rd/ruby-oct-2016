module MyEnumerable
  def my_each
    for n in self
        yield(n)
    end
  end
end
class Array
   include MyEnumerable
end

[1,2,3,4].my_each{ |n| puts n}
