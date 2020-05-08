# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  p_zero = []
  p_zero_other = []
  nums.each do |num|
    num == 0 ? p_zero.push(num) : p_zero_other.push(num)
  end
  index = 0
  p_zero_other.each do |num|
    nums[index] = num
    index += 1
  end
  p_zero.each do |num|
    nums[index] = num
    index += 1
  end
end