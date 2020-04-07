
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  array_to_hash = nums.each_with_object({}).with_index do |(value, hash), index|
    hash[value] = index
  end

  nums.each_with_index do |value, index|
    search = target - value
    return [index, array_to_hash[search]] if array_to_hash.key?(search) && index != array_to_hash[search]
  end

  return []
end

require 'minitest/autorun'
class TwoSumTests < Minitest::Test
  def test_example
    result = two_sum([2, 7, 11, 15], 9)
    assert result.include?(0)
    assert result.include?(1)
  end

  def test_submit1
    result = two_sum([3,2,4], 6)
    assert result.include?(1)
    assert result.include?(2)
  end
end