class Triangle
  attr_accessor :kind

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if side1+side2<=side3 || side1+side3<=side2 || side2+side3<=side1 || side1 <= 0 || side2 <= 0 || side3 <=0
      #begin
      raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
    end
  end

  def kind
    if @side1 == @side2
      if  @side1 == @side3
        return :equilateral
      else
        return :isosceles
      end
    elsif @side2 == @side3
      return :isosceles
    elsif @side1 == @side3
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
end
