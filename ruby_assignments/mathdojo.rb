class MathDojo
    attr_accessor :sum
    def initialize
        @sum = 0
    end

    def add (*params)
        params.each {|i| 
            if i.class == Array 
                i.each {|j| 
                    self.add(j)
                }
            else 
                @sum += i
            end
            }
        self
    end

    def subtract (*params)
        params.each {|i| 
            if i.class == Array 
                i.each {|j| 
                    self.subtract(j)
                }
            else 
                @sum -= i
            end
            }
        self
    end

    def result
        puts @sum
    end

end

puts MathDojo.new.add(1, 3, [10,2,7,4,[1,2,3],5], 8).result #.subtract(1,2,3,4,5).result
# challenge1 = MathDojo.new.add(2).add(2,5).subtract(3,2).result
# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).results