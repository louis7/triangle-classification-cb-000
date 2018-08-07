require "pry"
class Triangle
attr_accessor :equilateral, :isosceles,:scalene


def initialize(length_1, length_2, length_3)
  @length_1 = length_1
  @length_2 = length_2
  @length_3 = length_3
  @total = []
  @total<< @length_1 << @length_2 << @length_3

end



def kind
sanity
  if @length_1 == @length_2 && @length_1 == @length_3
    return :equilateral


  elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_2 == @length_3
      return :isosceles

else
  return :scalene
  end

end


 def sanity
  @total.each do |items|
      if items <= 0
        raise TriangleError
      end
  end
if @total[0] +@total[1] < @total[2]
  raise TriangleError
end

end


class TriangleError < StandardError
end

end
