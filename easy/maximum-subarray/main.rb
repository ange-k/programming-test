def kadane(history, number)
  if history.size == 0 then
    history.push(number)
    return
  end

  add = history.last + number
  number > add ? history.push(number) : history.push(add)
end
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  history = []
  nums.each do |value|
    kadane(history, value)
  end
  return history.max
end

require 'minitest/autorun'
class SubarrayTests < Minitest::Test
  def test_example
    nums = [-2,1,-3,4,-1,2,1,-5,4]
    max = max_sub_array(nums)
    assert max == 6
  end
end