# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head == nil

  fast = head
  slow = head

  loop do
    return false if slow == nil || fast == nil
    return false if slow.next == nil || fast.next == nil

    slow = slow.next
    fast = fast.next.next

    return true if slow == fast
  end
end