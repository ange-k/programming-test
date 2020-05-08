def binary_search(nums, target, s, e)
  return s if s > e;
  mid = (s + e) / 2;
  return mid if nums[mid] == target
  return binary_search(nums, target, s, mid - 1) if nums[mid] > target
  return binary_search(nums, target, mid + 1, e)
end
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  size = nums.size
  return 0 if size == 0
  return target > nums[0] ? 1 : 0 if size == 1
  return binary_search(nums, target, 0, size - 1)
end
