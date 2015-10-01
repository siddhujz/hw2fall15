class CartesianProduct
  include Enumerable

  # YOUR CODE HERE
  attr_accessor :a
  attr_accessor :b
   
  def initialize(a, b)
    @a = a
    @b = b
  end

  def each
    @a.each { |element_a|
      @b.each { |element_b|
        yield [element_a, element_b]
      }
    }
  end

end

#c = CartesianProduct.new([:a,:b], [4,5])
#c.each { |elt| puts elt.inspect }
#c = CartesianProduct.new([:a,:b], [])
#c.each { |elt| puts elt.inspect }