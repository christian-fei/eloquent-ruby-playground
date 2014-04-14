# this is a comment
class TestClass
  def initialize
  end
  def test_function(divisor)
    return 'uuups' if divisor == 0 #this is an inline comment
    return divisor
  end
end

t = TestClass.new
puts t.test_function(0)
puts t.test_function(1)
