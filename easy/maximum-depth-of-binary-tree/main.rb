# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  if root == nil then
    return 0
  end

  leftDepth = max_depth(root.left)
  rightDepth = max_depth(root.right)
  return leftDepth > rightDepth ? leftDepth + 1 : rightDepth + 1
end