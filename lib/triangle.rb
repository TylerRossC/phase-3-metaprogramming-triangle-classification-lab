class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ((a == b) && (a == c) && (b == c))
      return :equilateral
    elsif ((a == b) || (a == c) || (b == c))
      return :isosceles
    else
      return :scalene
    end
    raise TriangleError if ((a == 0) && (b == 0) && (c == 0))
  rescue TriangleError => error
    puts error.message
  end
    
    # if triangle.class != Triangle
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    #   end
    # else
    #   triangle = self
    # end
  end

  class TriangleError < StandardError
    def message
      "illegal triangle"
    end
  end
end
