

class Apple_Tree
    attr_reader :height, :age, :apple_count
    def initialize
        @height = 1
        @age = 0
        @apple_count = 0
    end
    def year_gone
        @age += 1
        @height += 15 if age <= 10
        @height -= 1 if age > 10
        @apple_count += 1 if (age > 3 and  age < 10)
        self
    end
    def pick_apples
        @apple_count = 0
        self
    end


end
