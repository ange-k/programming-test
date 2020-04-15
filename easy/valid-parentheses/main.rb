# @param {String} s
# @return {Boolean}

class Stack
  LEFT = %w|( { [|
  def initialize
    @stack = []
  end

  def pushOrPop(str)
    str.chars.each do |s|
      if LEFT.include?(s)
        @stack.push s
      else
        return false unless pop(s)
      end
    end
    return @stack.size == 0
  end

  private

  def pop(s)
    return false if @stack.size == 0
    pop = @stack.pop
    case pop
    when '(' then
      return s == ')'
    when '{' then
      return s == '}'
    when '[' then
      return s == ']'
    else
      return false
    end
  end
end

def is_valid(s)
  stack = Stack.new
  return stack.pushOrPop(s)
end

require 'minitest/autorun'
class ValidParenthesesTests < Minitest::Test
  def test_example
    assert Stack.new.pushOrPop("[]")
  end
  def test_example2
    assert Stack.new.pushOrPop("()[]{}")
  end
  def test_example3
    assert Stack.new.pushOrPop("{[]}")
  end
  def test_example4
    assert !Stack.new.pushOrPop("([)]")
  end
  def test_example5
    assert !Stack.new.pushOrPop("[")
  end
end