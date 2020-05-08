require 'minitest/autorun'
require_relative '../main'

class MoveZeroTest < MiniTest::Unit::TestCase
  def test_example1
    nums = [0,1,0,3,12]
    move_zeroes(nums)
    [1,3,12,0,0].each_with_index do |ans, index|
      assert ans == nums[index]
    end
  end
end