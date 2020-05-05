require_relative '../../module/heap'
class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
  def initialize(k, nums)
    @heap = Heap.new
    @k = k
    nums.each do |num|
      @heap.add(num)
    end
  end


=begin
    :type val: Integer
    :rtype: Integer
=end
  def add(val)
    @heap.add(val)
    while(@heap.size > @k) do
      @heap.pop
    end
    return @heap.min
  end

end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)

require 'minitest/autorun'
class KthTests < Minitest::Test
  def test_example
    arr = [4, 5, 8, 2]
    k = 3
    kth = KthLargest.new(k, arr)
    assert kth.add(3) == 4
    assert kth.add(5) == 5
    assert kth.add(10) == 5
    assert kth.add(9) == 8
    assert kth.add(4) ==8
  end
end